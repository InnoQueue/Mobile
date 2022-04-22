part of 'task_tile_body.dart';

class _ExpandedOpenQueueButton extends StatefulWidget {
  final bool isExpanded;
  final TaskModel taskModel;
  const _ExpandedOpenQueueButton({
    required this.isExpanded,
    required this.taskModel,
    Key? key,
  }) : super(key: key);

  @override
  State<_ExpandedOpenQueueButton> createState() =>
      _ExpandedOpenQueueButtonState();
}

class _ExpandedOpenQueueButtonState extends State<_ExpandedOpenQueueButton>
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
      child: GestureDetector(
        child: const Icon(Icons.list),
        onTap: () async {
          QueueModel queueToOpen =
              await ApiQueuesService.getQueue(widget.taskModel.id);
          context
              .read<AppBarBloc>()
              .add(RouteChangedEvent(widget.taskModel.name));
          context
              .read<QueueDetailsBloc>()
              .add(QueueDetailsEvent.openQueue(queueToOpen));
          context.read<TasksListBloc>().add(TasksListEvent.shrinkTask());
          context.router.push(const QueueDetailsRoute());
        },
      ),
    );
  }
}
