import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/queues/bloc/queues_bloc.dart';
import 'helpers/getit_service_locator.dart';
import 'routes/app_router.dart';

void main() {
  configureDependencies();
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
    return BlocProvider(
      create: (_) => getIt.get<QueuesBloc>(),
      child: MaterialApp.router(
          title: 'InnoQueue',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            canvasColor: Colors.transparent,
          ),
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [
              AutoRouteObserver(),
            ],
          ),
          routeInformationParser: _router.defaultRouteParser()),
    );
  }
}
