import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/queue_details/widgets/editable/participant_tile.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

class EditableParticipants extends StatelessWidget {
  final QueueModel queueModel;
  const EditableParticipants({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (queueModel.participants.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              'Participants in the queue:',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: queueModel.participants.length,
          itemBuilder: (context, index) => ParticipantTile(
            user: queueModel.participants[index],
            queue: queueModel,
          ),
          separatorBuilder: (context, index) => Stack(
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
          ),
        ),
      ],
    );
  }
}
