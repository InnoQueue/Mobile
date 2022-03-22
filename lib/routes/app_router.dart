import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../const/const.dart';
import '../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  preferRelativeImports: false,
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/home',
      name: "HomeRouter",
      initial: true,
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
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
