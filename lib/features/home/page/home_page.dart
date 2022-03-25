import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/features/home/widgets/bottom_bar.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';
import '../../../const/const.dart';

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
    return AutoRouter(
      builder: (context, child) {
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
    );
  }

  PreferredSizeWidget? _appBarBuilder(StackRouter _, BuildContext context) {
    return AppBar(
      title: Text(
        _getAppBarTitle(_.current.name),
        style: Theme.of(context).textTheme.appBarTextStyle,
      ),
      leading: _.current.name == QueueDetailsRoute.name
          ? Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 40,
                  ),
                  onPressed: () {
                    context.router.pop();
                  }),
            )
          : null,
      actions: [
        if (_.current.name == QueuesRoute.name)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const QueueBottomSheet();
                  },
                );
              },
              icon: const Icon(
                Icons.add,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
        if (_.current.name == QueueDetailsRoute.name)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PopupMenuButton<String>(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 35,
                ),
                onSelected: (lol) {},
                itemBuilder: (BuildContext context) {
                  return myMenuItems.map((String choice) {
                    return PopupMenuItem<String>(
                      child: Text(
                        choice,
                        style: Theme.of(context).textTheme.popupMenuItemStyle,
                      ),
                      value: choice,
                    );
                  }).toList();
                }),
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

  List<String> get myMenuItems =>
      ['Edit', 'Invite user', 'Freeze queue', 'Leave', 'Delete queue'];

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
      case QueueDetailsRoute.name:
        return context.read<AppBarBloc>().state;
      default:
        return routeName;
    }
  }
}
