import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/features/home/widgets/bottom_bar.dart';
import 'package:inno_queue/routes/app_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        final router = context.router;
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _appBarBuilder(router, context),
          body: child,
          bottomNavigationBar: const BottomBar(),
        ); // <-- Here
      },
    );
  }

  PreferredSizeWidget? _appBarBuilder(StackRouter _, BuildContext context) {
    return AppBar(title: Text(_getAppBarTitle(_.current.name)));
  }

  String _getAppBarTitle(String routeName) {
    switch (routeName) {
      case TasksRoute.name:
        return 'To-do tasks';
      case QueuesRoute.name:
        return 'Queus';
      case NotificationsRoute.name:
        return 'Notifications';
      case SettingsRoute.name:
        return 'Settings';
      default:
        return routeName;
    }
  }
}
