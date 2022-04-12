part of 'home_page.dart';

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {
            context.router.pop();
          }),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 40,
      ),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return const QueueBottomSheet();
          },
        );
      },
    );
  }
}

class _AnimatedButton extends StatefulWidget {
  final Icon icon;
  final bool setAllDone;
  final bool skipAll;
  const _AnimatedButton({
    required this.icon,
    this.setAllDone = false,
    this.skipAll = false,
    Key? key,
  }) : super(key: key);

  @override
  State<_AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<_AnimatedButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 400),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: ScaleTransition(
          scale: _animation,
          child: widget.icon,
        ),
        onPressed: () {
          if (widget.setAllDone) {
            context
                .read<SelectTasksBloc>()
                .add(const SelectTasksEvent.setAllDone());
          } else if (widget.skipAll) {
            context
                .read<SelectTasksBloc>()
                .add(const SelectTasksEvent.skipAll());
          }
        },
      ),
    );
  }
}

class _ClearButton extends StatelessWidget {
  const _ClearButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.clear,
        color: Colors.black,
        size: 30,
      ),
      onPressed: () {
        context.read<SelectTasksBloc>().add(const SelectTasksEvent.clear());
      },
    );
  }
}

class _QrButton extends StatelessWidget {
  const _QrButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: const Icon(
          Icons.qr_code,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const QrAlert()),
      ),
    );
  }
}

class _MoreButton extends StatefulWidget {
  const _MoreButton({Key? key}) : super(key: key);

  @override
  State<_MoreButton> createState() => _MoreButtonState();
}

class _MoreButtonState extends State<_MoreButton> {
  late List<String> myMenuItems;

  @override
  void initState() {
    super.initState();
    var currentQueue = context.read<QueueDetailsBloc>().currentQueue;
    String? freeze = currentQueue.isActive && !currentQueue.isOnDuty
        ? 'Freeze queue'
        : !currentQueue.isActive
            ? 'Unfreeze queue'
            : null;

    myMenuItems = [
      'Edit',
      'Invite user',
      if (freeze != null) freeze,
      currentQueue.isAdmin ? 'Delete queue' : 'Leave queue',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: PopupMenuButton<String>(
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 30,
          ),
          onSelected: _onSelected,
          itemBuilder: (BuildContext context) {
            return myMenuItems.map((String choice) {
              return PopupMenuItem<String>(
                child: Text(
                  choice,
                  style: Theme.of(context).textTheme.popupMenuItemStyle,
                ),
                value: choice,
              );
            }).toList();
          }),
    );
  }

  void _onSelected(String item) {
    switch (item) {
      case 'Delete queue':
      case 'Leave queue':
        context
            .read<QueueDetailsBloc>()
            .add(const QueueDetailsEvent.leaveQueue());
        //context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
        break;
      case 'Freeze queue':
        context
            .read<QueueDetailsBloc>()
            .add(const QueueDetailsEvent.freezeQueue());
        //context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
        break;
      default:
    }
  }
}
