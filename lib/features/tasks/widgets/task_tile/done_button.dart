part of 'task_tile.dart';

class _DoneButton extends StatefulWidget {
  final bool expanded;
  final bool noItemSelected;
  const _DoneButton(
      {this.expanded = false, this.noItemSelected = true, Key? key})
      : super(key: key);

  @override
  State<_DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<_DoneButton> {
  late TaskTileState? parent;
  bool isInWaitingList = false;
  bool done = false;
  @override
  Widget build(BuildContext context) {
    parent = context.findAncestorStateOfType<TaskTileState>();

    return BlocBuilder<TasksListBloc, TasksListState>(
      builder: (context, state) {
        state.when(
          dataManaged:
              (v0, expandedTask, v1, v2, waitingList, selectedList, v3, v4) {
            done = waitingList
                .contains(context.findAncestorWidgetOfExactType<TaskTile>());
          },
          initial: () => null,
        );
        return AnimatedOpacity(
          opacity: widget.expanded || !widget.noItemSelected ? 0 : 1,
          duration: const Duration(milliseconds: 200),
          child: GestureDetector(
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
                if (widget.expanded || !widget.noItemSelected) return;
                setState(() {
                  if (!done) {
                    parent!.setDone();
                  } else {
                    parent!.setUndone();
                  }
                  done = !done;
                });
              }),
        );
      },
    );
  }
}
