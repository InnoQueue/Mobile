import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/colors.dart';
import 'package:inno_queue/features/queue_details/queue_detail_bloc/queue_details_bloc.dart';
import 'package:inno_queue/shared/bloc/edit_queue_bloc/edit_queue_bloc.dart';
import 'package:inno_queue/shared/bloc/select_tasks_bloc/select_tasks_bloc.dart';

import 'features/queues/bloc/queues_bloc.dart';
import 'helpers/getit_service_locator.dart';
import 'routes/app_router.dart';
import 'shared/bloc/appbar/appbar_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<QueuesBloc>()),
        BlocProvider(create: (_) => getIt.get<QueueDetailsBloc>()),
        BlocProvider(create: (_) => AppBarBloc(HomeRouter.name)),
        BlocProvider(create: (_) => getIt.get<SelectTasksBloc>()),
        BlocProvider(create: (_) => getIt.get<EditQueueBloc>())
      ],
      child: MaterialApp.router(
          title: 'InnoQueue',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: white,
            canvasColor: Colors.transparent,
          ),
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [
              AutoRouteObserver(),
              //LoggingRouteObserver(),
            ],
          ),
          routeInformationParser: _router.defaultRouteParser()),
    );
  }
}
