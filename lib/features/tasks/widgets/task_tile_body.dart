part of 'task_list.dart';

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

class _BodyState extends State<_Body> with TickerProviderStateMixin {
  bool done = false;

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
                      child: GestureDetector(
                        child: const Icon(Icons.list),
                        onTap: () {
                          // context
                          //     .read<AppBarBloc>()
                          //     .add(RouteChangedEvent(widget.taskModel.));
                          // context.read<QueueDetailsBloc>().add(
                          //     QueueDetailsEvent.openQueue(widget.taskModel.));
                          // context.router.push(const QueueDetailsRoute());
                        },
                      ),
                    ),
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: widget.expanded ? 1 : 0,
                      child: const ExpandedSkipButton(
                          key: ValueKey("ExpandedSkipButton")),
                    ),
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: widget.expanded ? 1 : 0,
                      child: const ExpandedDoneButton(
                          key: ValueKey("ExpandedSkipButton")),
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
