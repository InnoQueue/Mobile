// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRouter.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    RegistrationRouter.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const RegistrationPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomeRouter.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    TasksRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const TasksPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    QueuesRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const QueuesPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    NotificationsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const NotificationsPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SettingsPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    QueueDetailsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const QueueDetailsPage(),
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    NotificationSettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const NotificationSettingsPage(),
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    ThemeSettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ThemeSettingsPage(),
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    LanguageSettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const LanguageSettingsPage(),
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        RouteConfig(SplashRouter.name, path: '/splash'),
        RouteConfig(RegistrationRouter.name, path: '/registration'),
        RouteConfig(HomeRouter.name, path: '/home/', children: [
          RouteConfig(TasksRoute.name, path: '', parent: HomeRouter.name),
          RouteConfig(QueuesRoute.name,
              path: 'queues', parent: HomeRouter.name),
          RouteConfig(NotificationsRoute.name,
              path: 'notifications', parent: HomeRouter.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRouter.name),
          RouteConfig(QueueDetailsRoute.name,
              path: 'queue-details', parent: HomeRouter.name),
          RouteConfig(NotificationSettingsRoute.name,
              path: 'notification-settings', parent: HomeRouter.name),
          RouteConfig(ThemeSettingsRoute.name,
              path: 'theme-settings', parent: HomeRouter.name),
          RouteConfig(LanguageSettingsRoute.name,
              path: 'langage-settings', parent: HomeRouter.name)
        ])
      ];
}

/// generated route for
/// [SplashPage]
class SplashRouter extends PageRouteInfo<void> {
  const SplashRouter() : super(SplashRouter.name, path: '/splash');

  static const String name = 'SplashRouter';
}

/// generated route for
/// [RegistrationPage]
class RegistrationRouter extends PageRouteInfo<void> {
  const RegistrationRouter()
      : super(RegistrationRouter.name, path: '/registration');

  static const String name = 'RegistrationRouter';
}

/// generated route for
/// [HomePage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(HomeRouter.name, path: '/home/', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [TasksPage]
class TasksRoute extends PageRouteInfo<void> {
  const TasksRoute() : super(TasksRoute.name, path: '');

  static const String name = 'TasksRoute';
}

/// generated route for
/// [QueuesPage]
class QueuesRoute extends PageRouteInfo<void> {
  const QueuesRoute() : super(QueuesRoute.name, path: 'queues');

  static const String name = 'QueuesRoute';
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: 'notifications');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [QueueDetailsPage]
class QueueDetailsRoute extends PageRouteInfo<void> {
  const QueueDetailsRoute()
      : super(QueueDetailsRoute.name, path: 'queue-details');

  static const String name = 'QueueDetailsRoute';
}

/// generated route for
/// [NotificationSettingsPage]
class NotificationSettingsRoute extends PageRouteInfo<void> {
  const NotificationSettingsRoute()
      : super(NotificationSettingsRoute.name, path: 'notification-settings');

  static const String name = 'NotificationSettingsRoute';
}

/// generated route for
/// [ThemeSettingsPage]
class ThemeSettingsRoute extends PageRouteInfo<void> {
  const ThemeSettingsRoute()
      : super(ThemeSettingsRoute.name, path: 'theme-settings');

  static const String name = 'ThemeSettingsRoute';
}

/// generated route for
/// [LanguageSettingsPage]
class LanguageSettingsRoute extends PageRouteInfo<void> {
  const LanguageSettingsRoute()
      : super(LanguageSettingsRoute.name, path: 'langage-settings');

  static const String name = 'LanguageSettingsRoute';
}
