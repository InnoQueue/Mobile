import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_notifications.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
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
  late Future<int> futureUserId;

  @override
  void initState() {
    super.initState();
    future = ApiNotificationsService.getNotifications();
    futureUserId = CacheService.getUserId();

    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      if (mounted) {
        setState(() {
          future = ApiNotificationsService.getNotifications();
          futureUserId = CacheService.getUserId();
          print("new msg.data: ${msg.data}");
          if (msg.notification != null) {
            print("also notification: ${msg.notification!.body}!");
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
          }
          var notifications = snapshot.data;
          return FutureBuilder(
              future: futureUserId,
              builder: (context, AsyncSnapshot userIdSnapshot) {
                if (!userIdSnapshot.hasData) {
                  return const Center(
                    child: CustomCircularProgressIndicator(),
                  );
                }
                var userId = userIdSnapshot.data;
                return SafeArea(
                  minimum: const EdgeInsets.all(10),
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overscroll) {
                      overscroll.disallowIndicator();
                      return true;
                    },
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            NotificationsView(
                              notificationsType: AppLocalizations.of(context)!
                                      .translate("unread") ??
                                  "unread",
                              notifications: notifications.first,
                              userId: userId,
                            ),
                            NotificationsView(
                              notificationsType: AppLocalizations.of(context)!
                                      .translate("all") ??
                                  "all",
                              notifications: notifications.last,
                              userId: userId,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
