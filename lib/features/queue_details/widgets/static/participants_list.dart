import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';
import 'participant_tile.dart';

class Participants extends StatelessWidget {
  final QueueModel queueModel;
  const Participants({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: queueDetailsPadding, vertical: 10),
          child: Text(
            'On duty:',
            style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
          ),
        ),
        ParticipantTile(
          user: queueModel.crrentUser,
          queue: queueModel,
        ),
        if (queueModel.participants.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              'Other participants in the queue:',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          )
        else
          const SizedBox(
            height: 20,
          ),
        queueModel.participants.isEmpty
            ? const NoItemsWidget(
                imagePath: 'images/crying.gif',
                message:
                    "There's only you here!\nInvite your roomates to the queue",
              )
            : ListView.separated(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: queueDetailsPadding),
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
