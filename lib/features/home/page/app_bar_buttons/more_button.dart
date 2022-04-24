part of '../home_page.dart';

class _MoreButton extends StatefulWidget {
  const _MoreButton({Key? key}) : super(key: key);

  @override
  State<_MoreButton> createState() => _MoreButtonState();
}

class _MoreButtonState extends State<_MoreButton> {
  late List<String> myMenuItems;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => Wrap(),
        queueOpened: (queueDetails, editable) {
          String? freeze = queueDetails.isActive && !queueDetails.isOnDuty
              ? 'freeze queue'
              : !queueDetails.isActive
                  ? 'unfreeze queue'
                  : null;

          myMenuItems = [
            if (queueDetails.isAdmin) 'edit',
            'invite user',
            if (freeze != null) freeze,
            queueDetails.isAdmin ? 'delete queue' : 'leave queue',
          ];
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PopupMenuButton<String>(
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
                onSelected: _onSelected,
                itemBuilder: (BuildContext context) {
                  return myMenuItems.map((String choice) {
                    return PopupMenuItem<String>(
                      child: Text(
                        AppLocalizations.of(context)!.translate(choice) ??
                            choice,
                        style: Theme.of(context).textTheme.popupMenuItemStyle,
                      ),
                      value: choice,
                    );
                  }).toList();
                }),
          );
        },
      ),
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
    QueueDetailsModel currentQueueDetails =
        context.read<QueueDetailsBloc>().currentQueueDetails;

    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext _) {
        return InviteUserAlert(queueDetailsModel: currentQueueDetails);
      },
    );
  }
}
