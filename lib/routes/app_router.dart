import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          path: kQueuesEndpoint,
          page: QueuesPage,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
            path: kNotificationsEndpoint,
            page: NotificationsPage,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
          path: kSettingsEndpoint,
          page: SettingsPage,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          path: kQueueDetailsEndpoint,
          page: QueueDetailsPage,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          path: kNotificationSettingsEndpoint,
          page: NotificationSettingsPage,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          path: kThemeSettingsEndpoint,
          page: ThemeSettingsPage,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          path: kLangaugeSettingsEndpoint,
          page: LanguageSettingsPage,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
