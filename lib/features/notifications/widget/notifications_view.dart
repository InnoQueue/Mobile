import 'package:flutter/material.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'notification_tile.dart';

class NotificationsView extends StatelessWidget {
  final String notificationsType;
  final List<NotificationModel> notifications;

  const NotificationsView(this.notificationsType, this.notifications,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("notifications: ${notifications.length}");
    if (notifications.isNotEmpty) {
      return Expanded(
        child: Column(
          children: [
            Text(notificationsType),
            Expanded(
              child: ListView.separated(
                itemCount: notifications.length,
                itemBuilder: (context, index) =>
                    NotificationTile(notifications[index]),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
