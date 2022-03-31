import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_notifications.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';
import 'package:inno_queue/features/notifications/widget/notifications_view.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  late Future<List<List<NotificationModel>>> future;

  @override
  void initState() {
    future = ApiNotificationsService.getNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();
          var notifications = snapshot.data;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 16),
                  NotificationsView("unread", notifications[0]),
                  const SizedBox(height: 16),
                  NotificationsView("all", notifications[1]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
