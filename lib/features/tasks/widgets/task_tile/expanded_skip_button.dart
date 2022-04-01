part of 'task_tile.dart';

class ExpandedSkipButton extends StatefulWidget {
  final bool isExpanded;
  const ExpandedSkipButton({required this.isExpanded, Key? key})
      : super(key: key);

  @override
  State<ExpandedSkipButton> createState() => _ExpandedSkipButtonState();
}

class _ExpandedSkipButtonState extends State<ExpandedSkipButton>
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
            context.findAncestorStateOfType<TaskListState>()!.removeItem(
                context, context.findAncestorWidgetOfExactType<TaskTile>()!,
                expanded: true, skip: true);
            context.read<TasksListBloc>().add(TasksListEvent.skipTask(
                context.findAncestorWidgetOfExactType<TaskTile>()!));
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
