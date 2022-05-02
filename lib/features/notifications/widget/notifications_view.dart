import 'package:flutter/material.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'notification_tile.dart';

class NotificationsView extends StatelessWidget {
  final String notificationsType;
  final List<NotificationModel> notifications;
  final int userId;

  const NotificationsView({
    required this.notificationsType,
    required this.notifications,
    required this.userId,
    Key? key,
  }) : super(key: key);

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
            itemBuilder: (context, index) =>
                NotificationTile(notifications[index], userId),
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
