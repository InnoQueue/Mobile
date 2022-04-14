import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

class Header extends StatelessWidget {
  final QueueModel queueModel;
  const Header({required this.queueModel, Key? key}) : super(key: key);

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
