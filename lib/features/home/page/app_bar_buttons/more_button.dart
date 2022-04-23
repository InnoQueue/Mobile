part of '../home_page.dart';

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
        ? 'freeze queue'
        : !currentQueue.isActive
            ? 'unfreeze queue'
            : null;

    myMenuItems = [
      if (currentQueue.isAdmin) 'edit',
      'invite user',
      if (freeze != null) freeze,
      currentQueue.isAdmin ? 'delete queue' : 'leave queue',
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
                  AppLocalizations.of(context)!.translate(choice) ?? choice,
                  style: Theme.of(context).textTheme.popupMenuItemStyle,
                ),
                value: choice,
              );
            }).toList();
          }),
    );
  }

  void _onSelected(String item) {
    print(item);
    switch (item) {
      case 'invite user':
        _showQr();
        break;
      case 'delete queue':
      case 'leave queue':
        context
            .read<QueueDetailsBloc>()
            .add(const QueueDetailsEvent.leaveQueue());
        break;
      case 'freeze queue':
        context
            .read<QueueDetailsBloc>()
            .add(const QueueDetailsEvent.freezeQueue());
        break;
      case 'unfreeze queue':
        context
            .read<QueueDetailsBloc>()
            .add(const QueueDetailsEvent.unfreezeQueue());
        break;
      case 'edit':
        context
            .read<QueueDetailsBloc>()
            .add(const QueueDetailsEvent.editQueue());
        break;
      default:
    }
  }

  void _showQr() {
    QueueModel currectQueue = context.read<QueueDetailsBloc>().currentQueue;

    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext _) {
        return InviteUserAlert(queueModel: currectQueue);
      },
    );
  }
}
