part of 'task_tile_body.dart';

class _DoneButton extends StatefulWidget {
  final bool expanded;
  final bool noItemSelected;
  final TaskModel taskModel;
  final Function setDone;
  final Function setUndone;
  const _DoneButton(
      {this.expanded = false,
      this.noItemSelected = true,
      required this.taskModel,
      required this.setDone,
      required this.setUndone,
      Key? key})
      : super(key: key);

  @override
  State<_DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<_DoneButton> {
  bool isInWaitingList = false;
  bool done = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksListBloc, TasksListState>(
      builder: (context, state) {
        state.when(
          dataManaged: (v0, expandedTask, v1, v2, v3, waitingList, selectedList,
              v4, v5) {
            done = waitingList.contains(widget.taskModel);
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
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all(
                              color: done ? Colors.orangeAccent : Colors.grey,
                              width: 2)),
                    ),
                    if (done)
                      Container(
                        width: 14,
                        height: 14,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          color: Colors.orangeAccent,
                        ),
                      ),
                  ],
                ),
              ),
              onTap: () {
                if (widget.expanded || !widget.noItemSelected) return;
                setState(() {
                  if (!done) {
                    widget.setDone();
                  } else {
                    widget.setUndone();
                  }
                  done = !done;
                });
              }),
        );
      },
    );
  }
}
