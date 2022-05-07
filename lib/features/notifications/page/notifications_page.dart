import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/core/widget/updatable_page.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';
import 'package:inno_queue/features/notifications/notifications_bloc/notifications_bloc.dart';
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
    context
        .read<NotificationsBloc>()
        .add(const NotificationsEvent.loadRequested());
    futureUserId = CacheService.getUserId();

    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      if (mounted) {
        setState(() {
          context
              .read<NotificationsBloc>()
              .add(const NotificationsEvent.loadRequested());
          futureUserId = CacheService.getUserId();
          if (kDebugMode) {
            print("new msg.data: ${msg.data}");
          }
          if (msg.notification != null) {
            if (kDebugMode) {
              print("also notification: ${msg.notification!.body}!");
            }
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(10),
      child: Container(
        // ignore: deprecated_member_use
        color: Theme.of(context).primaryColorBrightness == Brightness.dark
            ? Colors.grey[900]
            : Colors.blueGrey[50],
        child: FutureBuilder(
          future: futureUserId,
          builder: (context, AsyncSnapshot userIdSnapshot) {
            if (!userIdSnapshot.hasData) {
              return Wrap();
            }
            var userId = userIdSnapshot.data;
            return BlocBuilder<NotificationsBloc, NotificationsState>(
                builder: (context, state) {
              return UpdatablePage(
                enablePullDown: state.maybeWhen(
                  dataLoaded: (_, __) => true,
                  orElse: () => false,
                ),
                bloc: context.read<NotificationsBloc>(),
                onRefresh: () {
                  context
                      .read<NotificationsBloc>()
                      .add(const NotificationsEvent.loadRequested());
                },
                refreshDone: !context.read<NotificationsBloc>().loading,
                child: state.when(
                  initial: () => const Center(
                    child: CustomCircularProgressIndicator(),
                  ),
                  dataLoaded: (unreadNotifications, allNotifications) =>
                      NotificationListener<OverscrollIndicatorNotification>(
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
                              notifications: unreadNotifications,
                              userId: userId,
                            ),
                            NotificationsView(
                              notificationsType: AppLocalizations.of(context)!
                                      .translate("all") ??
                                  "all",
                              notifications: allNotifications,
                              userId: userId,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
