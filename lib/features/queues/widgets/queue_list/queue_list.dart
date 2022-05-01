import 'package:auto_route/auto_route.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';
import 'package:provider/src/provider.dart';

part 'queue_tile.dart';

class QueueList extends StatelessWidget {
  final List<QueueModel> queues;
  final bool frozen;
  final bool active;
  const QueueList({
    required this.queues,
    this.frozen = false,
    this.active = false,
    Key? key,
  })  : assert(frozen != false || active != false),
        assert(!(frozen == true && active == true)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return queues.isEmpty
        ? NoItemsWidget(
            imagePath: 'images/idk.gif',
            message: active
                ? AppLocalizations.of(context)!.translate('no active queues') ??
                    ''
                : AppLocalizations.of(context)!.translate('no frozen queues') ??
                    '',
          )
        : Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
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
