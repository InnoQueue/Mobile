import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
          child: Text(
        'NOTIFICATIONS',
        style: TextStyle(
          fontSize: 40,
        ),
      )),
    );
  }
}
