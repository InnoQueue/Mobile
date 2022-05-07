
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/core/widget/updatable_page.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  void initState() {
    super.initState();
    context.read<TasksBloc>().add(const TasksEvent.loadRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return UpdatablePage(
          enablePullDown: state.maybeWhen(
            dataLoaded: (_) => true,
            orElse: () => false,
          ),
          onRefresh: () {
            context.read<TasksBloc>().add(const TasksEvent.loadRequested());
          },
          refreshDone: !context.read<TasksBloc>().loading,
          bloc: context.read<TasksBloc>(),
          child: state.when(
            initial: () => Container(
              // ignore: deprecated_member_use
              color: Theme.of(context).primaryColorBrightness == Brightness.dark
                  ? Colors.grey[900]
                  : Colors.blueGrey[50],
              child: const Center(
                child: CustomCircularProgressIndicator(),
              ),
            ),
            dataLoaded: (tasks) {
              return Container(
                color:
                    // ignore: deprecated_member_use
                    Theme.of(context).primaryColorBrightness == Brightness.dark
                        ? Colors.grey[900]
                        : Colors.blueGrey[50],
                child: tasks.isEmpty
                    ? NoItemsWidget(
                        imagePath: 'images/sleeping.gif',
                        message: AppLocalizations.of(context)!
                                .translate('no tasks') ??
                            '',
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: TaskList(
                          items: tasks,
                          key: GlobalKey(),
                        ),
                      ),
              );
            },
          ),
        );
      },
    );
  }
}
