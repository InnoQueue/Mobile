import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'InnoQueue',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: AutoRouterDelegate(
          _router,
          navigatorObservers: () => [
            AutoRouteObserver(),
          ],
        ),
        routeInformationParser: _router.defaultRouteParser());
  }
}
