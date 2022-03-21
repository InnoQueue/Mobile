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
    HomeRouter.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomePage(),
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    TasksRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const TasksPage(),
          opaque: true,
          barrierDismissible: false);
    },
    QueuesRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const QueuesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    NotificationsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const NotificationsPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SettingsPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        RouteConfig(HomeRouter.name, path: '/home', children: [
          RouteConfig(TasksRoute.name, path: '', parent: HomeRouter.name),
          RouteConfig(QueuesRoute.name,
              path: 'queues', parent: HomeRouter.name),
          RouteConfig(NotificationsRoute.name,
              path: 'notifications', parent: HomeRouter.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRouter.name)
        ])
      ];
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
