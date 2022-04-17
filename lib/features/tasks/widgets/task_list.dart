import 'dart:async';
import 'dart:math';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inno_queue/core/api/api_tasks.dart';
import 'package:inno_queue/core/widget/task_expenses.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
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
  late List<TaskTile> _items;
  late AnimationController _expandAnimationController;
  late Animation _expandAnimation;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _items = widget.items
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
    return BlocProvider(
      create: (_) =>
          getIt.get<TasksListBloc>()..add(TasksListEvent.initTasks(_items)),
      child: BlocBuilder<TasksListBloc, TasksListState>(
        builder: (context, state) {
          return state.when(
            initial: () => Wrap(),
            dataManaged: (items, expanded, done, expenses, skipped, waitingList,
                selectedList, emptyingSelectedList, emptyingWaitingList) {
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
                            child: items[index],
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

  void manageExpanded(TaskTile? expanded) {
    if (expanded != null) {
      _expandAnimationController.reverse();
    } else {
      _expandAnimationController.isCompleted
          ? _expandAnimationController.reverse()
          : _expandAnimationController.forward();
    }
  }

  void removeItem(BuildContext context, TaskTile tile,
      {bool expanded = false,
      bool skip = false,
      bool done = false,
      double? expenses}) {
    _listKey.currentState!.removeItem(
      _items.indexOf(tile),
      (context, animation) => Padding(
        padding: EdgeInsets.symmetric(horizontal: expanded ? 0 : 10),
        child: SizeTransition(
          sizeFactor: animation,
          child: FadeTransition(
            opacity: animation,
            child: tile,
          ),
        ),
      ),
      duration: const Duration(milliseconds: 200),
    );

    if (skip) {
      ApiTasksService.skipTask(task: tile.taskModel);
    } else if (done) {
      ApiTasksService.deleteTask(task: tile.taskModel, expenses: expenses);
    }
  }

  void emptyWaitingList(BuildContext context, TaskTile tile, double? expenses) {
    if (tile.taskModel.trackExpenses) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext _) {
          return TaskExpensesDialog(
              buildContext: context,
              taskTile: tile,
              removeItem: removeItem,
              expanded: false,
              emptyingWaitingList: true);
        },
      );
    } else {
      removeItem(context, tile, done: true);
      context.read<TasksListBloc>().add(TasksListEvent.emptyWaitingList(tile));
    }
  }

  void emptySelectedListOnDone(
      BuildContext context, TaskTile tile, double? expenses) {
    if (tile.taskModel.trackExpenses) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext _) {
          return TaskExpensesDialog(
              buildContext: context,
              taskTile: tile,
              removeItem: removeItem,
              expanded: false,
              emptyingSelectedList: true);
        },
      );
    } else {
      removeItem(context, tile, done: true, expenses: expenses);
      context.read<TasksListBloc>().add(TasksListEvent.emptySelectedList(tile));
    }
  }

  void emptySelectedListOnSkip(BuildContext context, TaskTile tile) {
    removeItem(context, tile, skip: true);
    context.read<TasksListBloc>().add(TasksListEvent.emptySelectedList(tile));
  }

  void _onDismissed(BuildContext context, TaskTile item) {
    _listKey.currentState!
        .removeItem(_items.indexOf(item), (context, animation) => Wrap());
    ApiTasksService.skipTask(task: item.taskModel);
    context.read<TasksListBloc>().add(TasksListEvent.skipTask(item));
  }
}
