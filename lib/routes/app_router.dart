import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/features/registration/page/registration_page.dart';
import 'package:inno_queue/features/settings/page/language_settings_page.dart';
import 'package:inno_queue/features/settings/page/notification_settings_page.dart';
import 'package:inno_queue/features/settings/page/theme_settings_page.dart';
import 'package:inno_queue/features/splash/page/splash_page.dart';
import '../const/const.dart';
import '../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashPage,
      path: '/splash',
      name: "SplashRouter",
      initial: true,
    ),
    CustomRoute(
      page: RegistrationPage,
      path: '/registration',
      name: "RegistrationRouter",
      initial: true,
    ),
    CustomRoute(
      page: HomePage,
      path: '/home/',
      name: "HomeRouter",
      initial: false,
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
        CustomRoute(
          path: kQueueDetailsEndpoint,
          page: QueueDetailsPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: kNotificationSettingsEndpoint,
          page: NotificationSettingsPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: kThemeSettingsEndpoint,
          page: ThemeSettingsPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: kLangaugeSettingsEndpoint,
          page: LanguageSettingsPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
