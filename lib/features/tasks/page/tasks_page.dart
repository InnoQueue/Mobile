import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh(TasksBloc bloc) async {
    bloc.add(const TasksEvent.loadRequested());
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) =>
            getIt.get<TasksBloc>()..add(const TasksEvent.loadRequested()),
        child: BlocBuilder<TasksBloc, TasksState>(
          builder: (context, state) {
            return NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: SmartRefresher(
                enablePullDown: state.maybeWhen(
                  dataLoaded: (_) => true,
                  orElse: () => false,
                ),
                controller: _refreshController,
                onRefresh: () => _onRefresh(context.read<TasksBloc>()),
                header: const ClassicHeader(
                  completeDuration: Duration.zero,
                  completeText: '',
                  completeIcon: null,
                ),
                child: state.when(
                  initial: () => const Center(
                    child: CustomCircularProgressIndicator(),
                  ),
                  dataLoaded: (tasks) {
                    _refreshController.loadComplete();
                    return SafeArea(
                        child: tasks.isEmpty
                            ? NoItemsWidget(
                                imagePath: 'images/sleeping.gif',
                                message: AppLocalizations.of(context)!
                                        .translate('no tasks') ??
                                    '',
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                child: TaskList(
                                  items: tasks,
                                  key: GlobalKey(),
                                ),
                              ));
                  },
                ),
              ),
            );
          },
        ));
  }
}
