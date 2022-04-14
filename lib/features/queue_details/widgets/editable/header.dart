import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

class EditableHeader extends StatelessWidget {
  final QueueModel queueModel;
  const EditableHeader({required this.queueModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            _Avatar(queueModel: queueModel),
            const _EditButton(),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        IntrinsicWidth(
          child: TextField(
            controller: TextEditingController()..text = queueModel.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            cursorColor: Colors.black,
            cursorWidth: 1.5,
            decoration: const InputDecoration(
              hintText: "Queue name",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final QueueModel queueModel;
  const _Avatar({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors[queueModel.color],
      ),
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Color(Colors.blueGrey[50]!.value)),
      ),
      child: const Icon(
        Icons.edit,
        color: Colors.black,
        size: 15,
      ),
    );
  }
}
