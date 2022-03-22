import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    required this.title,
    required this.leadingIcon,
    required this.route,
    Key? key,
  }) : super(key: key);

  final String title;
  final Icon leadingIcon;
  final PageRouteInfo? route;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: Colors.white,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leadingIcon,
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
        onTap: () => _onTap(context),
      ),
    );
  }

  void _onTap(BuildContext _) {
    if (route != null) {
      _.router.replace(route!);
    }
  }
}
