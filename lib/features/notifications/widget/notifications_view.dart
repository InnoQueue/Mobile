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
    List<Widget> notifcationTiles = _buildTiles();

    if (notifications.isNotEmpty) {
      return Column(
        children: [
          Text(notificationsType),
          const SizedBox(height: 8),
          ...notifcationTiles,
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  List<Widget> _buildTiles() {
    List<Widget> widgets = [];
    for (int i = 0; i < notifications.length; i++) {
      widgets.add(
        SizedBox(
          width: double.infinity,
          child: NotificationTile(notifications[i]),
        ),
      );
    }
    return widgets;
  }
}
