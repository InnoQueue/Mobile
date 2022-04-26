import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/features/registration/page/registration_page.dart';
import 'package:inno_queue/features/splash/page/splash_page.dart';
import '../const/const.dart';
import '../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      path: '/splash',
      name: "SplashRouter",
      initial: true,
    ),
    AutoRoute(
      page: RegistrationPage,
      path: '/registration',
      name: "RegistrationRouter",
      initial: true,
    ),
    AutoRoute(
      page: HomePage,
      path: '/home',
      name: "HomeRouter",
      initial: false,
      children: [
        AutoRoute(
          path: '',
          page: TasksPage,
        ),
        AutoRoute(
          path: kQueuesEndpoint,
          page: QueuesPage,
        ),
        AutoRoute(
          path: kNotificationsEndpoint,
          page: NotificationsPage,
        ),
        AutoRoute(
          path: kSettingsEndpoint,
          page: SettingsPage,
        ),
        AutoRoute(
          path: kQueueDetailsEndpoint,
          page: QueueDetailsPage,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
