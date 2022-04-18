part of 'task_tile_body.dart';

class _ExpandedSkipButton extends StatefulWidget {
  final bool isExpanded;
  final TaskModel taskModel;
  final Function removeItem;
  const _ExpandedSkipButton(
      {required this.isExpanded,
      required this.taskModel,
      required this.removeItem,
      Key? key})
      : super(key: key);

  @override
  State<_ExpandedSkipButton> createState() => _ExpandedSkipButtonState();
}

class _ExpandedSkipButtonState extends State<_ExpandedSkipButton>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation scaleAnimation;
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
        startIcon: Icons.clear,
        endIcon: Icons.highlight_remove,
        rotate: true,
        controller: AnimateIconController(),
        listener: (AnimationStatus status) async {
          if (status == AnimationStatus.completed) {
            await Future.delayed(const Duration(milliseconds: 200));
            await widget.removeItem(context, widget.taskModel,
                expanded: true, skip: true);
            context
                .read<TasksListBloc>()
                .add(TasksListEvent.skipTask(widget.taskModel));
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
}
