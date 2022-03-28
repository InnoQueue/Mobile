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
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      setState(() {
        if (done) _visible = false;
      });
    }

    await Future.delayed(const Duration(seconds: 2));
    if (done) {
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

class _Body extends StatefulWidget {
  final TaskModel taskModel;
  final bool expanded;
  const _Body({
    Key? key,
    required this.taskModel,
    this.expanded = false,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              child: widget.taskModel.isImportant ?? false
                  ? AnimatedOpacity(
                      opacity: widget.expanded ? 0 : 1,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : null,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: widget.expanded ? 50 : 40,
              height: widget.expanded ? 50 : 40,
              decoration: BoxDecoration(
                color: colors[widget.taskModel.color] ?? Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                child: Text(widget.taskModel.name),
                style: TextStyle(
                  fontSize: widget.expanded ? 23 : 20,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            AnimatedOpacity(
                opacity: widget.expanded ? 0 : 1,
                duration: const Duration(milliseconds: 200),
                child: _DoneButton(expanded: widget.expanded)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.taskModel.isImportant ?? false)
                AnimatedPadding(
                  duration: const Duration(milliseconds: 200),
                  padding:
                      EdgeInsets.only(left: 40 + (widget.expanded ? 5 : 0)),
                  child: const Text("You've been shook!",
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                )
              else
                Wrap(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: [
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: widget.expanded ? 1 : 0,
                      child: const Icon(Icons.list),
                    ),
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: widget.expanded ? 1 : 0,
                      child: const Icon(Icons.reply),
                    ),
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: widget.expanded ? 1 : 0,
                      child: const Icon(Icons.done),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
