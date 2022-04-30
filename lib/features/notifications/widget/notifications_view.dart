import 'package:flutter/material.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'notification_tile.dart';

class NotificationsView extends StatelessWidget {
  final String notificationsType;
  final List<NotificationModel> notifications;

  const NotificationsView(this.notificationsType, this.notifications, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (notifications.isNotEmpty) {
      return Column(
        children: [
          Text(notificationsType),
          const SizedBox(height: 10),
          ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: notifications.length,
            itemBuilder: (context, index) => NotificationTile(notifications[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          ),
          const SizedBox(height: 10),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
