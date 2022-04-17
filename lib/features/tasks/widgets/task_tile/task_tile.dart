// ignore: must_be_immutable
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/widget/task_expenses.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import 'package:inno_queue/features/tasks/widgets/animated_icon.dart';
import 'package:inno_queue/features/tasks/widgets/task_list.dart';

part 'task_tile_body.dart';
part 'done_button.dart';
part 'expanded_done_button.dart';
part 'expanded_skip_button.dart';

class TaskTile extends StatefulWidget {
  final TaskModel taskModel;
  final Function removeItem;

  const TaskTile({
    Key? key,
    required this.taskModel,
    required this.removeItem,
  }) : super(key: key);

  // ignore: use_key_in_widget_constructors
  TaskTile.from(TaskTile other)
      : taskModel = other.taskModel,
        removeItem = other.removeItem;

  @override
  State<TaskTile> createState() => TaskTileState();
}

class TaskTileState extends State<TaskTile> {
  late bool _visible;
  late int _duration;
  late bool _expanded = false;
  bool _selected = false;
  bool _noItemSelected = true;
  bool done = false;

  @override
  void initState() {
    super.initState();
    _duration = 2;
    _visible = true;
  }

  @override
  Widget build(BuildContext context) {
    _duration = _visible ? 0 : 2;
    return BlocBuilder<TasksListBloc, TasksListState>(
        builder: (context, state) {
      state.when(
        dataManaged:
            (v0, expandedTask, v1, v2, v3, waitingList, selectedList, v4, v5) {
          _expanded = expandedTask == widget;
          _selected = selectedList.contains(widget);
          _noItemSelected = selectedList.isEmpty;
        },
        initial: () => null,
      );
      return GestureDetector(
        child: AnimatedOpacity(
          opacity: _visible ? 1 : 0,
          duration: Duration(seconds: _duration),
          child: AnimatedContainer(
            padding: EdgeInsets.only(
                top: (tileHeight - 40) / 2 + (_expanded ? 5 : 0)),
            duration: const Duration(milliseconds: 200),
            color: Colors.white,
            height: _expanded ? 1.8 * tileHeight : tileHeight,
            child: _Body(
              taskTile: widget,
              expanded: _expanded,
              selected: _selected,
              noItemSelected: _noItemSelected,
              removeItem: widget.removeItem,
              setDone: setDone,
              setUndone: setUndone,
            ),
          ),
        ),
        onTap: () => setState(() {
          if (_noItemSelected) {
            _expanded = !_expanded;
            if (_expanded) {
              context
                  .read<TasksListBloc>()
                  .add(TasksListEvent.expandTask(widget));
            } else {
              context
                  .read<TasksListBloc>()
                  .add(const TasksListEvent.shrinkTask());
            }
          } else {
            if (_selected) {
              context
                  .read<TasksListBloc>()
                  .add(TasksListEvent.removeFromSelectedList(widget));
            } else {
              context
                  .read<TasksListBloc>()
                  .add(TasksListEvent.addToSelectedList(widget));
            }
          }
        }),
        onLongPress: () {
          setState(() {
            if (!_selected) {
              HapticFeedback.lightImpact();
              context
                  .read<TasksListBloc>()
                  .add(TasksListEvent.addToSelectedList(widget));
            }
          });
        },
      );
    });
  }

  setDone() {
    done = true;
    context.read<TasksListBloc>().add(TasksListEvent.addToWaitingList(widget));
  }

  setUndone() async {
    done = false;
    context
        .read<TasksListBloc>()
        .add(TasksListEvent.removeFromWaitingList(widget));
  }

  setExpanded(bool expanded) {
    setState(() {
      _expanded = expanded;
    });
  }
}
