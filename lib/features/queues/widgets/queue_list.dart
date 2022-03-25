import 'package:auto_route/auto_route.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queue_details/queue_detail_bloc/queue_details_bloc.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';
import 'package:provider/src/provider.dart';

part 'queue_tile.dart';

class QueueList extends StatelessWidget {
  final List<QueueModel> queues;
  const QueueList({required this.queues, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListView.separated(
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
      ),
    );
  }
}
