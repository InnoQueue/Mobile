import 'package:flutter/material.dart';
import 'package:inno_queue/features/tasks/widgets/task_list.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: TaskList(),
      ),
    );
  }
}
