import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  final Widget child;
  const TabPage({Key? key, required this.child}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with AutoRouteAware {
  AutoRouteObserver? _observer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      _observer!.subscribe(this, context.routeData);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _observer!.unsubscribe(this);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  // only override if this is a tab page
  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    if (kDebugMode) {
      print(1);
    }
  }

  @override
  void didPush() {
    if (kDebugMode) {
      print(2);
    }
  }

  @override
  void didPop() {
    if (kDebugMode) {
      print(3);
    }
  }
}
