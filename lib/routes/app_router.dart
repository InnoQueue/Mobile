import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../const/const.dart';
import '../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: HomePage,
      path: '/home',
      name: "HomeRouter",
      initial: true,
      children: [
        CustomRoute(
          path: '',
          page: TasksPage,
        ),
        CustomRoute(
          path: kQueuesEndpoint,
          page: QueuesPage,
        ),
        CustomRoute(
          path: kNotificationsEndpoint,
          page: NotificationsPage,
        ),
        CustomRoute(
          path: kSettingsEndpoint,
          page: SettingsPage,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
