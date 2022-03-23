import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
          child: Text(
        AppRes.notifications,
        style: TextStyle(
          fontSize: 40,
        ),
      )),
    );
  }
}
