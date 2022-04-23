import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

class ParticipantTile extends StatefulWidget {
  final UserModel user;
  final QueueModel queue;
  const ParticipantTile({
    required this.user,
    required this.queue,
    Key? key,
  }) : super(key: key);

  @override
  State<ParticipantTile> createState() => _ParticipantTileState();
}

class _ParticipantTileState extends State<ParticipantTile> {
  late bool onDutyTile;

  @override
  void initState() {
    super.initState();
    onDutyTile = widget.queue.crrentUser == widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return onDutyTile
        ? _OnDutyTile(user: widget.user, queue: widget.queue)
        : _RegularTile(user: widget.user);
  }
}

class _OnDutyTile extends StatefulWidget {
  final UserModel user;
  final QueueModel queue;
  const _OnDutyTile({
    required this.user,
    required this.queue,
    Key? key,
  }) : super(key: key);

  @override
  State<_OnDutyTile> createState() => _OnDutyTileState();
}

class _OnDutyTileState extends State<_OnDutyTile> {
  final _shakeDuration = const Duration(milliseconds: 250);
  final _shakeDelta = 20;
  final _shakeCurve = Curves.bounceOut;
  var _shakeText = 'shake';
  var _shakeEnd = 0.0;

  late bool onDutyTile;

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
          color: Theme.of(context).primaryColor,
          border: const Border.symmetric(
              horizontal: BorderSide(color: Colors.grey, width: 0.5)),
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
                    Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '${widget.user.expenses}₽ ${AppLocalizations.of(context)!.translate('spent') ?? 'spent'}',
                          style: Theme.of(context).textTheme.expensesStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              if (!widget.queue.isOnDuty)
                GestureDetector(
                  onTap: () {
                    HapticFeedback.lightImpact();
                    setState(() {
                      ApiQueuesService.shakeUser(queue: widget.queue);
                      _shakeEnd = 1.0;
                      _shakeText = 'shook';
                      _shakeKey = UniqueKey();
                    });
                  },
                  child: Text(
                    AppLocalizations.of(context)!.translate(_shakeText) ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
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

class _RegularTile extends StatelessWidget {
  final UserModel user;
  const _RegularTile({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Theme.of(context).primaryColor,
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
                    user.name,
                    style: Theme.of(context).textTheme.userNameStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: queueDetailsPadding / 2),
              child: Text(
                '${user.expenses}₽ ${AppLocalizations.of(context)!.translate('spent') ?? 'spent'}',
                style: Theme.of(context).textTheme.expensesStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
