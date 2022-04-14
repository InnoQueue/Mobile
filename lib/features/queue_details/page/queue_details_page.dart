import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/core/widget/task_expenses.dart';
import 'package:inno_queue/features/features.dart';
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
            context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
            context.router.pop();
            return Wrap();
          },
          queueFreezed: () {
            context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
            context.router.pop();
            return Wrap();
          },
          initial: () => Wrap(),
          queueOpened: (queue) {
            return SafeArea(
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
                            height: 40,
                            //width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                            child: Text(
                              'Add Progress',
                              style: Theme.of(context)
                                  .textTheme
                                  .largeButtonTextSrtyle,
                            ),
                          ),
                          onPressed: () {
                            showDialog<void>(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext _) {
                                return TaskExpensesDialog(
                                  buildContext: context,
                                  queueModel: queue,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _Participants(
                        queueModel: queue,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
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
        _ParticipantTile(
          user: queueModel.crrentUser,
          queue: queueModel,
        ),
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
            queue: queueModel,
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
  final QueueModel queue;
  const _ParticipantTile({
    required this.user,
    required this.queue,
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

  late bool onDutyTile;

  // ignore: prefer_typing_uninitialized_variables
  var _shakeKey;

  @override
  void initState() {
    super.initState();
    onDutyTile = widget.queue.crrentUser == widget.user;
  }

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
          border: onDutyTile
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
                    if (onDutyTile)
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
              if (onDutyTile)
                if (!widget.queue.isOnDuty)
                  TextButton(
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                    ),
                    onPressed: () {
                      HapticFeedback.lightImpact();
                      setState(() {
                        ApiQueuesService.shakeUser(queue: widget.queue);
                        _shakeEnd = 1.0;
                        _shakeText = 'shook';
                        _shakeKey = UniqueKey();
                      });
                    },
                    child: Text(
                      _shakeText,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.75),
                      ),
                    ),
                  )
                else
                  Wrap()
              else
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: queueDetailsPadding / 2),
                  child: Text(
                    '${widget.user.expenses}₽ spent',
                    style: Theme.of(context).textTheme.expensesStyle,
                  ),
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
