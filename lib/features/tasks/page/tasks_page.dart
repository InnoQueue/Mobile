import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) =>
            getIt.get<TasksBloc>()..add(const TasksEvent.loadRequested()),
        child: BlocBuilder<TasksBloc, TasksState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                  child: CircularProgressIndicator(color: Colors.grey)),
              dataLoaded: (tasks) {
                return SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: TaskList(
                    items: tasks,
                    key: GlobalKey(),
                  ),
                ));
              },
            );
          },
        ));
  }
}
