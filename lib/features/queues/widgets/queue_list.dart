import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

part 'queue_tile.dart';

class QueueList extends StatelessWidget {
  final List<QueueModel> queues;
  const QueueList({required this.queues, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: queues.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: QueueTile(
            queueModel: queues[index],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
