import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
          child: Text(
        'TASKS',
        style: TextStyle(
          fontSize: 40,
        ),
      )),
    );
  }
}
