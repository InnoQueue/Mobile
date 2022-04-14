part of 'task_tile.dart';

class _Body extends StatefulWidget {
  final TaskTile taskTile;
  final bool expanded;
  final bool selected;
  final bool noItemSelected;
  final Function removeItem;
  final Function setDone;
  final Function setUndone;
  const _Body({
    Key? key,
    required this.taskTile,
    this.expanded = false,
    this.selected = false,
    this.noItemSelected = true,
    required this.removeItem,
    required this.setDone,
    required this.setUndone,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            _ShakenIndicator(
              isImportant: widget.taskTile.taskModel.isImportant ?? false,
              isExpanded: widget.expanded,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                _Avatar(
                  color: widget.taskTile.taskModel.color,
                  isExpanded: widget.expanded,
                ),
                _SelectedIndicator(
                  expanded: widget.expanded,
                  selected: widget.selected,
                ),
              ],
            ),
            const SizedBox(width: 20),
            _TaskName(
              name: widget.taskTile.taskModel.name,
              isExpanded: widget.expanded,
            ),
            _DoneButton(
              expanded: widget.expanded,
              noItemSelected: widget.noItemSelected,
              taskTile: widget.taskTile,
              setDone: widget.setDone,
              setUndone: widget.setUndone,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.taskTile.taskModel.isImportant ?? false)
                _ShakenSign(
                  isExpanded: widget.expanded,
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
                    ExpandedSkipButton(
                      taskTile: widget.taskTile,
                      removeItem: widget.removeItem,
                      isExpanded: widget.expanded,
                      key: const ValueKey("ExpandedSkipButton"),
                    ),
                    ExpandedDoneButton(
                      taskTile: widget.taskTile,
                      removeItem: widget.removeItem,
                      isExpanded: widget.expanded,
                      key: const ValueKey("ExpandedDoneButton"),
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

class _ShakenSign extends StatelessWidget {
  final bool isExpanded;
  const _ShakenSign({required this.isExpanded, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(left: 40 + (isExpanded ? 5 : 0)),
      child: const Text(
        "You've been shaken!",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}

class _TaskName extends StatelessWidget {
  final String name;
  final bool isExpanded;
  const _TaskName({
    required this.name,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        child: Text(name),
        style: Theme.of(context).textTheme.tileNameTextStyle(isExpanded),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _ShakenIndicator extends StatelessWidget {
  final bool isImportant;
  final bool isExpanded;
  const _ShakenIndicator({
    required this.isImportant,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: isImportant
          ? AnimatedOpacity(
              opacity: isExpanded ? 0 : 1,
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
    );
  }
}

class _Avatar extends StatelessWidget {
  final String color;
  final bool isExpanded;
  const _Avatar({
    required this.color,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isExpanded ? 50 : 40,
      height: isExpanded ? 50 : 40,
      decoration: BoxDecoration(
        color: colors[color] ?? Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _SelectedIndicator extends StatefulWidget {
  final bool expanded;
  final bool selected;
  const _SelectedIndicator(
      {required this.expanded, required this.selected, Key? key})
      : super(key: key);

  @override
  State<_SelectedIndicator> createState() => _SelectedIndicatorState();
}

class _SelectedIndicatorState extends State<_SelectedIndicator> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: (widget.expanded ? 18 * 1.25 : 18),
      height: (widget.expanded ? 18 * 1.25 : 18),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: widget.expanded ? 18 * 1.25 : 18,
            width: widget.expanded ? 18 * 1.25 : 18,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width:
                (widget.expanded ? 18 * 1.25 : 18) * (widget.selected ? 1 : 0),
            height:
                (widget.expanded ? 18 * 1.25 : 18) * (widget.selected ? 1 : 0),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1.2,
              ),
            ),
            child: const Icon(
              Icons.done,
              color: Colors.white,
              size: 10,
            ),
          ),
        ],
      ),
    );
  }
}
