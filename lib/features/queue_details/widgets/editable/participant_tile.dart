import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

class EditableParticipantTile extends StatefulWidget {
  final UserModel user;
  final QueueModel queue;
  final Function onTap;
  final int index;
  const EditableParticipantTile({
    required this.user,
    required this.queue,
    required this.onTap,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  State<EditableParticipantTile> createState() =>
      _EditableParticipantTileState();
}

class _EditableParticipantTileState extends State<EditableParticipantTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: queueDetailsPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: queueDetailsPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Text(
                widget.user.name,
                style: Theme.of(context).textTheme.userNameStyle,
              ),
            ),
            _RemoveButton(
              onTap: widget.onTap,
              index: widget.index,
            ),
          ],
        ),
      ),
    );
  }
}

class _RemoveButton extends StatelessWidget {
  final Function onTap;
  final int index;
  const _RemoveButton({required this.onTap, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.shade400,
        ),
        child: const Icon(
          Icons.remove,
          color: Colors.white,
          size: 18,
        ),
      ),
      onTap: () => onTap(context, index),
    );
  }
}
