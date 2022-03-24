import 'package:flutter/material.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'notification_tile.dart';

class NotificationsView extends StatelessWidget {
  final List<NotificationModel> notifications;

  const NotificationsView(this.notifications, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("notifications: ${notifications.length}");
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) => NotificationTile(notifications[index]),
    );
  }
}
