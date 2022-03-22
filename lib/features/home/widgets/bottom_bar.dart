import 'package:flutter/material.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _items,
    );
  }

  static final _items = [
    const BottomBarItem(
      leadingIcon: Icon(Icons.done, size: 30),
      title: 'Tasks',
      route: TasksRoute(),
    ),
    const BottomBarItem(
      leadingIcon: Icon(Icons.list, size: 30),
      title: 'Queues',
      route: QueuesRoute(),
    ),
    const BottomBarItem(
      leadingIcon: Icon(Icons.notifications, size: 30),
      title: 'Notifications',
      route: NotificationsRoute(),
    ),
    const BottomBarItem(
      leadingIcon: Icon(Icons.settings, size: 30),
      title: 'Settings',
      route: SettingsRoute(),
    ),
  ];
}
