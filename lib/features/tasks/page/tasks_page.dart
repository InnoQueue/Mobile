import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_tasks.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import '../widgets/widgets.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  late List<TaskModel> tasks;
  bool fetched = false;

  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  void fetchTasks() async {
    tasks = await ApiTasksService.getTasks();
    setState(() {
      fetched = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: fetched
          ? Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TaskList(
                items: tasks,
              ),
            )
          : const Center(child: CircularProgressIndicator(color: Colors.grey)),
    );
  }
}
