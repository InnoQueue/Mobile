part of 'task_tile_body.dart';

class _ExpandedDoneButton extends StatefulWidget {
  final bool isExpanded;
  final TaskModel taskModel;
  final Function removeItem;
  const _ExpandedDoneButton({
    required this.taskModel,
    required this.isExpanded,
    required this.removeItem,
    Key? key,
  }) : super(key: key);

  @override
  State<_ExpandedDoneButton> createState() => _ExpandedDoneButtonState();
}

class _ExpandedDoneButtonState extends State<_ExpandedDoneButton>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation scaleAnimation;
  AnimateIconController iconController = AnimateIconController();
  bool done = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..addListener(() {
        setState(() {});
      });
    scaleAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 200),
      scale: widget.isExpanded ? 1 : 0,
      child: AnimateIcon(
        startIcon: Icons.done,
        endIcon: Icons.check_circle_outline,
        controller: iconController,
        rotate: true,
        listener: (AnimationStatus status) async {
          if (status == AnimationStatus.completed) {
            await Future.delayed(const Duration(milliseconds: 200));
            if (widget.taskModel.trackExpenses) {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext _) {
                  return TaskExpensesDialog(
                    buildContext: context,
                    taskModel: widget.taskModel,
                    removeItem: widget.removeItem,
                    expanded: widget.isExpanded,
                    reverseAnimation: reverseAnimation,
                  );
                },
              );
            } else {
              await widget.removeItem(context, widget.taskModel,
                  expanded: true, done: true);
              context
                  .read<TasksListBloc>()
                  .add(TasksListEvent.setTaskDone(widget.taskModel));
            }
          }
        },
        duration: const Duration(milliseconds: 300),
        clockwise: false,
        endIconColor: Colors.black,
        startIconColor: Colors.black,
        onTap: () {
          _controller.forward();
        },
      ),
    );
  }

  void reverseAnimation() {
    iconController.animateToStart();
  }
}
