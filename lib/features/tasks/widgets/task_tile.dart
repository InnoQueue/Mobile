part of 'task_list.dart';

// ignore: must_be_immutable
class TaskTile extends StatefulWidget {
  final TaskModel taskModel;
  final Function removeItem;
  final Function updateListState;
  bool expanded;

  TaskTile({
    Key? key,
    required this.taskModel,
    required this.removeItem,
    required this.updateListState,
    this.expanded = false,
  }) : super(key: key);

  // ignore: use_key_in_widget_constructors
  TaskTile.from(TaskTile other)
      : taskModel = other.taskModel,
        removeItem = other.removeItem,
        expanded = other.expanded,
        updateListState = other.updateListState;

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
    _expanded = widget.expanded;
  }

  @override
  Widget build(BuildContext context) {
    _duration = _visible ? 0 : 2;
    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: _expanded
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        child: AnimatedOpacity(
          opacity: _visible ? 1 : 0,
          duration: Duration(seconds: _duration),
          child: AnimatedContainer(
            padding: EdgeInsets.only(
                top: (tileHeight - 40) / 2 + (_expanded ? 5 : 0)),
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(_expanded ? 0 : 15)),
              color: Colors.white,
            ),
            height: _expanded ? 1.8 * tileHeight : tileHeight,
            child: _Body(
              taskModel: widget.taskModel,
              expanded: _expanded,
            ),
          ),
        ),
        onTap: () => setState(() {
          _expanded = !_expanded;
          if (_expanded) widget.updateListState(widget);
        }),
      ),
    );
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
    if (done) widget.removeItem(widget);
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
    return ListView(
      shrinkWrap: true,
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
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.taskModel.isImportant ?? false)
              AnimatedPadding(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.only(left: 40 + (widget.expanded ? 5 : 0)),
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
      ],
    );
  }
}
