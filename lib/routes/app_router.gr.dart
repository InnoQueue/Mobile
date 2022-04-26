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
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    RegistrationRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegistrationPage());
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    TasksRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TasksPage());
    },
    QueuesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const QueuesPage());
    },
    NotificationsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NotificationsPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingsPage());
    },
    QueueDetailsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const QueueDetailsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        RouteConfig(SplashRouter.name, path: '/splash'),
        RouteConfig(RegistrationRouter.name, path: '/registration'),
        RouteConfig(HomeRouter.name, path: '/home', children: [
          RouteConfig(TasksRoute.name, path: '', parent: HomeRouter.name),
          RouteConfig(QueuesRoute.name,
              path: 'queues', parent: HomeRouter.name),
          RouteConfig(NotificationsRoute.name,
              path: 'notifications', parent: HomeRouter.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRouter.name),
          RouteConfig(QueueDetailsRoute.name,
              path: 'queue-details', parent: HomeRouter.name)
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
      : super(HomeRouter.name, path: '/home', initialChildren: children);

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
