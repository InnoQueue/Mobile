import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

import '../../../features.dart';

class EditableParticipants extends StatefulWidget {
  final QueueDetailsModel queueDetailsModel;
  final Function removeParticipant;
  const EditableParticipants({
    required this.queueDetailsModel,
    required this.removeParticipant,
    Key? key,
  }) : super(key: key);

  @override
  State<EditableParticipants> createState() => _EditableParticipantsState();
}

class _EditableParticipantsState extends State<EditableParticipants> {
  late List<dynamic> _items;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _items = [...widget.queueDetailsModel.participants];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_items.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              (AppLocalizations.of(context)!.translate('participants') ??
                      'Participants in the queue') +
                  ':',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          ),
        AnimatedList(
          key: _listKey,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation) => Slidable(
            closeOnScroll: true,
            key: Key(_items[index].hashCode.toString()),
            child: Column(
              children: [
                EditableParticipantTile(
                  user: _items[index],
                  onTap: _dismiss,
                  index: index,
                ),
                if (_items[index] != _items.last) const _Separator(),
              ],
            ),
            endActionPane: ActionPane(
              extentRatio: 0.25,
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(
                  resizeDuration: const Duration(milliseconds: 200),
                  onDismissed: () {
                    _onDismissed(context, _items[index]);
                  }),
              children: [
                SlidableAction(
                  autoClose: false,
                  onPressed: (_) {
                    Slidable.of(_)!.dismiss(
                      ResizeRequest(const Duration(milliseconds: 200), () {
                        _onDismissed(context, _items[index]);
                      }),
                      duration: const Duration(milliseconds: 300),
                    );
                  },
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete_outline,
                  label: AppLocalizations.of(context)!.translate('delete') ??
                      'Delete',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _onDismissed(BuildContext context, UserModel user) {
    _listKey.currentState!
        .removeItem(_items.indexOf(user), (context, animation) => Wrap());

    _items.remove(user);
    widget.removeParticipant(user);
  }

  void _dismiss(BuildContext context, int index) {
    Slidable.of(context)!.dismiss(
      ResizeRequest(const Duration(milliseconds: 200), () {
        _onDismissed(context, _items[index]);
      }),
      duration: const Duration(milliseconds: 300),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Divider(
          height: 0.5,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: queueDetailsPadding),
          child: Divider(
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
