import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inno_queue/core/api/api_tasks.dart';
import 'package:inno_queue/core/widget/task_expenses.dart';
import '../bloc/bloc.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import 'package:inno_queue/features/tasks/widgets/task_tile/task_tile.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/shared/bloc/select_tasks_bloc/select_tasks_bloc.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> items;
  const TaskList({required this.items, Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => TaskListState();
}

class TaskListState extends State<TaskList> with TickerProviderStateMixin {
  late List<TaskModel> currentItems;
  late List<TaskTile> _initTiles;
  late AnimationController _expandAnimationController;
  late Animation _expandAnimation;
  late TasksBloc tasksBloc;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _initTiles = widget.items
        .map((item) => TaskTile(
              taskModel: item,
              removeItem: removeItem,
              key: GlobalKey<TaskTileState>(),
            ))
        .toList();

    _expandAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _expandAnimation =
        Tween(begin: 0.0, end: 15.0).animate(_expandAnimationController);
  }

  @override
  void dispose() {
    _expandAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    tasksBloc = context.read<TasksBloc>();
    return BlocProvider(
      create: (_) {
        return getIt.get<TasksListBloc>()
          ..add(TasksListEvent.initTasks(widget.items));
      },
      child: BlocBuilder<TasksListBloc, TasksListState>(
        builder: (context, state) {
          return state.when(
            initial: () => Wrap(),
            dataManaged: (items, expanded, done, expenses, skipped, waitingList,
                selectedList, emptyingSelectedList, emptyingWaitingList) {
              currentItems = items;
              manageExpanded(expanded);
              if (!emptyingSelectedList) {
                if (selectedList.isNotEmpty) {
                  context
                      .read<SelectTasksBloc>()
                      .add(SelectTasksEvent.select(selectedList.length));
                } else {
                  context
                      .read<SelectTasksBloc>()
                      .add(const SelectTasksEvent.unselect());
                }
              }
              if (emptyingWaitingList) {
                Timer.run(() {
                  emptyWaitingList(context, waitingList[0], expenses);
                });
              }
              return BlocBuilder<SelectTasksBloc, SelectTasksState>(
                  builder: (context, state) {
                state.maybeWhen(
                  allDone: () => Timer.run(() {
                    if (selectedList.isNotEmpty) {
                      emptySelectedListOnDone(
                          context, selectedList[0], expenses);
                    }
                  }),
                  allSkipped: () => Timer.run(() {
                    if (selectedList.isNotEmpty) {
                      emptySelectedListOnSkip(context, selectedList[0]);
                    }
                  }),
                  cleared: () => context
                      .read<TasksListBloc>()
                      .add(const TasksListEvent.unselect()),
                  orElse: () {},
                );
                return AnimatedList(
                  key: _listKey,
                  initialItemCount: items.length,
                  itemBuilder: (context, index, animation) {
                    bool isExpanded = expanded == items[index];
                    return AnimatedPadding(
                      duration: const Duration(milliseconds: 200),
                      padding: isExpanded
                          ? const EdgeInsets.symmetric(vertical: 5)
                          : const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                      child: AnimatedBuilder(
                        animation: _expandAnimationController,
                        builder: (context, child) => ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(
                              isExpanded ? _expandAnimation.value : 15)),
                          child: Slidable(
                            closeOnScroll: true,
                            enabled: !isExpanded && selectedList.isEmpty,
                            key: Key(items[index].hashCode.toString()),
                            child: _initTiles
                                .firstWhere((e) => e.taskModel == items[index]),
                            endActionPane: ActionPane(
                              extentRatio: 0.25,
                              motion: const ScrollMotion(),
                              dismissible: DismissiblePane(
                                  resizeDuration:
                                      const Duration(milliseconds: 200),
                                  onDismissed: () {
                                    _onDismissed(context, items[index]);
                                  }),
                              children: [
                                SlidableAction(
                                  autoClose: false,
                                  onPressed: (_) {
                                    Slidable.of(_)!.dismiss(
                                      ResizeRequest(
                                          const Duration(milliseconds: 200),
                                          () {
                                        _onDismissed(context, items[index]);
                                      }),
                                      duration:
                                          const Duration(milliseconds: 300),
                                    );
                                  },
                                  backgroundColor: const Color(0xFFFE4A49),
                                  foregroundColor: Colors.white,
                                  icon: Icons.clear,
                                  label: 'Skip',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              });
            },
          );
        },
      ),
    );
  }

  void manageExpanded(TaskModel? expanded) {
    if (expanded != null) {
      _expandAnimationController.reverse();
    } else {
      _expandAnimationController.isCompleted
          ? _expandAnimationController.reverse()
          : _expandAnimationController.forward();
    }
  }

  Future<void> removeItem(BuildContext context, TaskModel task,
      {bool expanded = false,
      bool skip = false,
      bool done = false,
      double? expenses}) async {
    _listKey.currentState!.removeItem(
      currentItems.indexOf(task),
      (context, animation) => Padding(
        padding: EdgeInsets.symmetric(horizontal: expanded ? 0 : 10),
        child: SizeTransition(
          sizeFactor: animation,
          child: FadeTransition(
            opacity: animation,
            child: _initTiles.firstWhere((e) => e.taskModel == task),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 200),
    );

    if (skip) {
      if (currentItems.length == 1) {
        await ApiTasksService.skipTask(task: task);
        context.read<TasksBloc>().add(const TasksEvent.loadRequested());
      } else {
        ApiTasksService.skipTask(task: task);
      }
    } else if (done) {
      if (currentItems.length == 1) {
        await ApiTasksService.deleteTask(task: task);
        tasksBloc.add(const TasksEvent.loadRequested());
      } else {
        ApiTasksService.skipTask(task: task);
      }
    }
  }

  void emptyWaitingList(
      BuildContext context, TaskModel task, double? expenses) async {
    if (task.trackExpenses) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext _) {
          return TaskExpensesDialog(
              buildContext: context,
              taskModel: task,
              removeItem: removeItem,
              expanded: false,
              emptyingWaitingList: true);
        },
      );
    } else {
      await removeItem(context, task, done: true);
      context.read<TasksListBloc>().add(TasksListEvent.emptyWaitingList(task));
    }
  }

  void emptySelectedListOnDone(
      BuildContext context, TaskModel task, double? expenses) async {
    if (task.trackExpenses) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext _) {
          return TaskExpensesDialog(
              buildContext: context,
              taskModel: task,
              removeItem: removeItem,
              expanded: false,
              emptyingSelectedList: true);
        },
      );
    } else {
      await removeItem(context, task, done: true, expenses: expenses);
      context.read<TasksListBloc>().add(TasksListEvent.emptySelectedList(task));
    }
  }

  void emptySelectedListOnSkip(BuildContext context, TaskModel task) async {
    await removeItem(context, task, skip: true);
    context.read<TasksListBloc>().add(TasksListEvent.emptySelectedList(task));
  }

  void _onDismissed(BuildContext context, TaskModel task) async {
    _listKey.currentState!
        .removeItem(currentItems.indexOf(task), (context, animation) => Wrap());

    if (currentItems.length == 1) {
      await ApiTasksService.skipTask(task: task);
      tasksBloc.add(const TasksEvent.loadRequested());
    } else {
      ApiTasksService.skipTask(task: task);
    }

    context.read<TasksListBloc>().add(TasksListEvent.skipTask(task));
  }
}
