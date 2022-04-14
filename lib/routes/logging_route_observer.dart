import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggingRouteObserver extends NavigatorObserver {
  final logger = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
  // detect loops

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('Route pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('Route popped: ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('Route removed: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? oldRoute, Route<dynamic>? newRoute}) {
    logger.d(
        'Route replaced: ${oldRoute?.settings.name} with ${newRoute?.settings.name}');
  }
}
