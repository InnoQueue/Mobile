import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queue_details/queue_detail_bloc/queue_details_bloc.dart';
import 'package:inno_queue/features/queues/bloc/queues_bloc.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';
import 'package:provider/src/provider.dart';

class QueueDetailsPage extends StatefulWidget {
  const QueueDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QueueDetailsPage> createState() => _QueueDetailsPageState();
}

class _QueueDetailsPageState extends State<QueueDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        return state.when(
          queueLeft: () {
            context.router.pop();
            context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
            return Wrap();
          },
          initial: () => Wrap(),
          queueOpened: (queue) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: _Header(
                        queueModel: queue,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: queueDetailsPadding),
                      child: ElevatedButton(
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          child: const Text(
                            'Add Progress',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    _Participants(
                      queueModel: queue,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  final QueueModel queueModel;
  const _Header({required this.queueModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors[queueModel.color],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          queueModel.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _Participants extends StatelessWidget {
  final QueueModel queueModel;
  const _Participants({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: queueDetailsPadding, vertical: 10),
          child: Text(
            'On duty:',
            style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
          ),
        ),
        _ParticipantTile(user: queueModel.crrentUser, onDuty: true),
        if (queueModel.participants.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              'Other participants in the queue:',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: queueModel.participants.length,
          itemBuilder: (context, index) => _ParticipantTile(
            user: queueModel.participants[index],
            onDuty: false,
          ),
          separatorBuilder: (context, index) => Stack(
            children: const [
              Divider(
                height: 0.5,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: queueDetailsPadding),
                child: Divider(
                  height: 0.5,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ParticipantTile extends StatefulWidget {
  final UserModel user;
  final bool onDuty;
  const _ParticipantTile({
    required this.user,
    required this.onDuty,
    Key? key,
  }) : super(key: key);

  @override
  State<_ParticipantTile> createState() => _ParticipantTileState();
}

class _ParticipantTileState extends State<_ParticipantTile> {
  final _shakeDuration = const Duration(milliseconds: 250);
  final _shakeDelta = 20;
  final _shakeCurve = Curves.bounceOut;
  var _shakeText = 'shake';
  var _shakeEnd = 0.0;
  // ignore: prefer_typing_uninitialized_variables
  var _shakeKey;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      key: _shakeKey,
      tween: Tween(begin: 0.0, end: _shakeEnd),
      duration: _shakeDuration,
      builder: (context, animation, child) => Transform.translate(
        offset: Offset(_shakeDelta * shake(animation), 0),
        child: child,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: widget.onDuty
              ? const Border.symmetric(
                  horizontal: BorderSide(color: Colors.grey, width: 0.5))
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: queueDetailsPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.name,
                      style: Theme.of(context).textTheme.userNameStyle,
                    ),
                    if (widget.onDuty)
                      Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${widget.user.expenses}₽ spent',
                            style: Theme.of(context).textTheme.expensesStyle,
                          ),
                        ],
                      )
                  ],
                ),
              ),
              widget.onDuty
                  ? TextButton(
                      style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                      ),
                      onPressed: () {
                        setState(() {
                          _shakeEnd = 1.0;
                          _shakeText = 'shook';
                          _shakeKey = UniqueKey();
                        });
                      },
                      child: Text(
                        _shakeText,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  : Text(
                      '${widget.user.expenses}₽ spent',
                      style: Theme.of(context).textTheme.expensesStyle,
                    )
            ],
          ),
        ),
      ),
    );
  }

  double shake(double animation) =>
      2 * (0.5 - (0.5 - _shakeCurve.transform(animation)).abs());
}
