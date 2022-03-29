part of 'task_list.dart';

// ignore: must_be_immutable
class TaskTile extends StatefulWidget {
  final TaskModel taskModel;

  const TaskTile({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  // ignore: use_key_in_widget_constructors
  TaskTile.from(TaskTile other) : taskModel = other.taskModel;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  late bool _visible;
  late int _duration;
  late bool _expanded = false;
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
        dataManaged: (_, expandedTask) => _expanded = expandedTask == widget,
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
              taskModel: widget.taskModel,
              expanded: _expanded,
            ),
          ),
        ),
        onTap: () => setState(() {
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
        }),
      );
    });
  }

  setTimeOut() async {
    done = true;
    await Future.delayed(const Duration(milliseconds: 1500));
    if (mounted) {
      setState(() {
        if (done) _visible = false;
      });
    }
    await Future.delayed(const Duration(seconds: 1));
    if (done && mounted) {
      ApiTasksService.deleteTask(task: widget.taskModel);
      context
          .findAncestorStateOfType<_TaskListState>()!
          .removeOnDone(context, widget, expanded: _expanded);
      context.read<TasksListBloc>().add(TasksListEvent.hideTask(widget));
    }
  }

  setUndone() async {
    setState(() {
      done = false;
      _visible = true;
    });
  }

  setExpanded(bool expanded) {
    setState(() {
      _expanded = expanded;
    });
  }
}
