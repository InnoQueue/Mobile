import 'package:flutter/material.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notificationModel;

  const NotificationTile(this.notificationModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("notification message: ${notificationModel.message}");
    return Text(notificationModel.message ?? '');
  }
}
