import 'dart:async';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/api/api_tasks.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import 'package:inno_queue/features/tasks/widgets/animated_icon.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/shared/bloc/appbar/select_tasks_bloc.dart';

part 'task_tile.dart';
part 'done_button.dart';
part 'expanded_done_button.dart';
part 'expanded_skip_button.dart';
part 'task_tile_body.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> items;
  const TaskList({required this.items, Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> with TickerProviderStateMixin {
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
              key: GlobalKey<_TaskTileState>(),
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
            dataManaged: (items, expanded, done, skipped, waitingList,
                selectedList, emptyingSelectedList) {
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
              if (waitingList.isNotEmpty) {
                Timer.run(() => emptyWaitingList(context, waitingList[0]));
              }
              return BlocBuilder<SelectTasksBloc, SelectTasksState>(
                  builder: (context, state) {
                state.maybeWhen(
                  allDone: () => Timer.run(() {
                    if (selectedList.isNotEmpty) {
                      emptySelectedListOnDone(context, selectedList[0]);
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
                                    _listKey.currentState!.removeItem(
                                        _items.indexOf(items[index]),
                                        (context, animation) => Wrap());
                                    ApiTasksService.skipTask(
                                        task: items[index].taskModel);
                                    context.read<TasksListBloc>().add(
                                        TasksListEvent.skipTask(items[index]));
                                  }),
                              children: [
                                SlidableAction(
                                  onPressed: (_) {},
                                  backgroundColor: Color(0xFFFE4A49),
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
      {bool expanded = false, bool skip = false, bool done = false}) {
    if (skip) {
      ApiTasksService.skipTask(task: tile.taskModel);
    } else if (done) {
      ApiTasksService.deleteTask(task: tile.taskModel);
    }
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
  }

  void emptyWaitingList(BuildContext context, TaskTile tile) {
    removeItem(context, tile, skip: true);
    context.read<TasksListBloc>().add(TasksListEvent.emptyWaitingList(tile));
  }

  void emptySelectedListOnDone(BuildContext context, TaskTile tile) {
    removeItem(context, tile, done: true);
    context.read<TasksListBloc>().add(TasksListEvent.emptySelectedList(tile));
  }

  void emptySelectedListOnSkip(BuildContext context, TaskTile tile) {
    removeItem(context, tile, skip: true);
    context.read<TasksListBloc>().add(TasksListEvent.emptySelectedList(tile));
  }

  Widget background = Container(height: 80, color: Colors.orange[400]);

  Container skip = Container(
    padding: const EdgeInsets.only(right: 20.0),
    alignment: Alignment.centerRight,
    child: Wrap(
      direction: Axis.vertical,
      children: const [
        Icon(
          Icons.reply,
          size: 30,
          color: Colors.white,
        ),
        Text(
          "Skip",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
