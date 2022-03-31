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

class _DoneButton extends StatelessWidget {
  const _DoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: const Icon(
          Icons.done,
          color: Colors.black,
          size: 25,
        ),
        onPressed: () {
          context
              .read<SelectTasksBloc>()
              .add(const SelectTasksEvent.setAllDone());
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

class _SkipButton extends StatelessWidget {
  const _SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: const Icon(
          Icons.delete_outline,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          context.read<SelectTasksBloc>().add(const SelectTasksEvent.skipAll());
        },
      ),
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
