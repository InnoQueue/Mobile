import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/routes/app_router.dart';
part 'bottom_bar_item.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<_BottomBarItem> _items = [];

  @override
  void initState() {
    super.initState();
    _items = [
      _BottomBarItem(
        leadingIcon: Icons.done,
        title: 'Tasks',
        route: const TasksRoute(),
        active: true,
        key: GlobalKey<_BottomBarItemState>(),
      ),
      _BottomBarItem(
        leadingIcon: Icons.list,
        title: 'Queues',
        route: const QueuesRoute(),
        key: GlobalKey<_BottomBarItemState>(),
      ),
      _BottomBarItem(
        leadingIcon: Icons.notifications,
        title: 'Notifications',
        route: const NotificationsRoute(),
        key: GlobalKey<_BottomBarItemState>(),
      ),
      _BottomBarItem(
        leadingIcon: Icons.settings,
        title: 'Settings',
        route: const SettingsRoute(),
        key: GlobalKey<_BottomBarItemState>(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _items,
    );
  }

  void setActive(_BottomBarItem item) {
    setState(() {
      for (_BottomBarItem element in _items) {
        (element.key as GlobalKey<_BottomBarItemState>)
            .currentState!
            .setAtive(item == element);
      }
    });
  }
}
