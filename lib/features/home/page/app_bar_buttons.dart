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
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const QueueBottomSheet();
            },
          );
        },
        icon: const Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
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
            size: 35,
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
