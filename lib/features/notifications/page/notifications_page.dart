import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_notifications.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';
import 'package:inno_queue/features/notifications/widget/notifications_view.dart';
import 'package:inno_queue/helpers/app_localizations.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  late Future<Pair<List<NotificationModel>, List<NotificationModel>>> future;

  @override
  void initState() {
    super.initState();
    future = ApiNotificationsService.getNotifications();
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
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 16),
                  NotificationsView(
                      AppLocalizations.of(context)!.translate("unread") ??
                          "unread",
                      notifications.first),
                  const SizedBox(height: 16),
                  NotificationsView(
                      AppLocalizations.of(context)!.translate("all") ?? "all",
                      notifications.last),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
