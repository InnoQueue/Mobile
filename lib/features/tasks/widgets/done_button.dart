part of 'task_list.dart';

class _DoneButton extends StatefulWidget {
  final bool expanded;
  const _DoneButton({this.expanded = false, Key? key}) : super(key: key);

  @override
  State<_DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<_DoneButton> {
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
          if (widget.expanded) return;
          setState(() {
            if (!done) {
              parent!.setDone();
            } else {
              parent!.setUndone();
            }
            done = !done;
          });
        });
  }
}
