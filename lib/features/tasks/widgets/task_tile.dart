part of 'task_list.dart';

class TaskTile extends StatefulWidget {
  final bool isUrgent;
  final Color color;
  final String name;
  final Function removeItem;
  const TaskTile({
    Key? key,
    required this.isUrgent,
    required this.color,
    required this.name,
    required this.removeItem,
  }) : super(key: key);

  // ignore: use_key_in_widget_constructors
  TaskTile.from(TaskTile other)
      : isUrgent = other.isUrgent,
        color = other.color,
        name = other.name,
        removeItem = other.removeItem;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  late bool _visible;
  late int _duration;
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
    return AnimatedOpacity(
      opacity: _visible ? 1 : 0,
      duration: Duration(seconds: _duration),
      child: Container(
        height: 80,
        color: Colors.white,
        child: _Body(
          isUrgent: widget.isUrgent,
          color: widget.color,
          name: widget.name,
        ),
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
}

class _Body extends StatefulWidget {
  final bool isUrgent;
  final Color color;
  final String name;
  const _Body({
    Key? key,
    required this.isUrgent,
    required this.color,
    required this.name,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: widget.isUrgent
              ? Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                )
              : null,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            widget.name,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const DoneButton(),
      ],
    );
  }
}

class DoneButton extends StatefulWidget {
  const DoneButton({Key? key}) : super(key: key);

  @override
  State<DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  late _TaskTileState? parent;
  bool done = false;
  @override
  Widget build(BuildContext context) {
    parent = context.findAncestorStateOfType<_TaskTileState>();

    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: done ? Colors.orangeAccent : Colors.grey,
                        width: 2)),
              ),
              if (done)
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orangeAccent),
                ),
            ],
          ),
        ),
        onTap: () {
          setState(() {
            if (!done) {
              parent!.setTimeOut();
            } else {
              parent!.setUndone();
            }
            done = !done;
          });
        });
  }
}
