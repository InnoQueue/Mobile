import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/widget/app_bottom_sheet.dart';
import 'package:inno_queue/features/home/widgets/bottom_bar.dart';
import 'package:inno_queue/features/queues/bloc/queues_bloc.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/routes/app_router.dart';

import '../../features.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

GlobalKey homePageScaffoldKey = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<QueuesBloc>(),
      child: BlocBuilder<QueuesBloc, QueuesState>(
        builder: (context, state) => AutoRouter(
          builder: (context, child) {
            print(context.read<QueuesBloc>().hashCode);
            final router = context.router;
            return Scaffold(
              key: homePageScaffoldKey,
              backgroundColor: Colors.blueGrey[50],
              resizeToAvoidBottomInset: false,
              appBar: _appBarBuilder(router, context),
              body: child,
              bottomNavigationBar: const BottomBar(),
            );
          },
        ),
      ),
    );
  }

  PreferredSizeWidget? _appBarBuilder(StackRouter _, BuildContext context) {
    return AppBar(
      title: Text(
        _getAppBarTitle(_.current.name),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        if (_.current.name == QueuesRoute.name)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                print(context.read<QueuesBloc>().hashCode);
                summonBottomSheet(context, const QueueBottomSheet());
              },
              icon: const Icon(
                Icons.add,
                color: Colors.black,
                size: 40,
              ),
            ),
          )
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 65,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness:
              Brightness.dark // For Android (dark icons) For iOS (dark icons)
          ),
    );
  }

  String _getAppBarTitle(String routeName) {
    switch (routeName) {
      case TasksRoute.name:
        return AppRes.todoTasks;
      case QueuesRoute.name:
        return AppRes.queues;
      case NotificationsRoute.name:
        return AppRes.notifications;
      case SettingsRoute.name:
        return AppRes.settings;
      default:
        return routeName;
    }
  }
}
