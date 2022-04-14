import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
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
