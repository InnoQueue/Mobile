import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queue_details/widgets/editable/participant_tile.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

class EditableParticipants extends StatefulWidget {
  final QueueModel queueModel;
  final Function removeParticipant;
  const EditableParticipants({
    required this.queueModel,
    required this.removeParticipant,
    Key? key,
  }) : super(key: key);

  @override
  State<EditableParticipants> createState() => _EditableParticipantsState();
}

class _EditableParticipantsState extends State<EditableParticipants> {
  late List<UserModel> _items;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _items = [...widget.queueModel.participants];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.queueModel.participants.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              'Participants in the queue:',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          ),
        AnimatedList(
          key: _listKey,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          initialItemCount: widget.queueModel.participants.length,
          itemBuilder: (context, index, animation) => Slidable(
            closeOnScroll: true,
            key: Key(_items[index].hashCode.toString()),
            child: ParticipantTile(
              user: widget.queueModel.participants[index],
              queue: widget.queueModel,
              onTap: _dismiss,
              index: index,
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
                  icon: Icons.clear,
                  label: 'Skip',
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
