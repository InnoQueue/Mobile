import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import '../../../features.dart';

class Participants extends StatelessWidget {
  final QueueDetailsModel queueDetailsModel;
  const Participants({
    required this.queueDetailsModel,
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
            '${AppLocalizations.of(context)!.translate('on duty') ?? 'On duty'}:',
            style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
          ),
        ),
        ParticipantTile(
          user: queueDetailsModel.currentUser,
          queueDetailsModel: queueDetailsModel,
        ),
        if (queueDetailsModel.participants.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: queueDetailsPadding, vertical: 10),
            child: Text(
              '${AppLocalizations.of(context)!.translate('other participants') ?? 'Other participants in the queue:'}:',
              style: Theme.of(context).textTheme.queueDetailsHeadingStyle,
            ),
          )
        else
          const SizedBox(
            height: 20,
          ),
        queueDetailsModel.participants.isEmpty
            ? NoItemsWidget(
                imagePath: 'images/crying.gif',
                message: AppLocalizations.of(context)!
                        .translate('no queue participants') ??
                    '',
              )
            : Container(
                color: Theme.of(context).primaryColor,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: queueDetailsModel.participants.length,
                  itemBuilder: (context, index) => ParticipantTile(
                    user: queueDetailsModel.participants[index],
                    queueDetailsModel: queueDetailsModel,
                  ),
                  separatorBuilder: (context, index) => const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: queueDetailsPadding),
                    child: Divider(
                      height: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
