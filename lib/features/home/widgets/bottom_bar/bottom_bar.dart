import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';
import 'package:inno_queue/shared/shared.dart';
import 'package:provider/src/provider.dart';
part 'bottom_bar_item.dart';

class BottomBar extends StatefulWidget {
  final String currentRoute;
  const BottomBar({
    Key? key,
    required this.currentRoute,
  }) : super(key: key);

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
        title: 'tasks',
        route: const TasksRoute(),
        active: true,
        setActive: setActive,
        key: GlobalKey<_BottomBarItemState>(),
      ),
      _BottomBarItem(
        leadingIcon: Icons.list,
        title: 'queues',
        route: const QueuesRoute(),
        setActive: setActive,
        key: GlobalKey<_BottomBarItemState>(),
      ),
      _BottomBarItem(
        leadingIcon: Icons.notifications,
        title: 'notifications',
        route: const NotificationsRoute(),
        setActive: setActive,
        key: GlobalKey<_BottomBarItemState>(),
      ),
      _BottomBarItem(
        leadingIcon: Icons.settings,
        title: 'settings',
        route: const SettingsRoute(),
        setActive: setActive,
        key: GlobalKey<_BottomBarItemState>(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    for (_BottomBarItem item in _items) {
      if (item.route!.routeName == widget.currentRoute) {
        setActive(item);
      }
    }
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
