import 'package:flutter/material.dart';
import 'package:inno_queue/const/text_theme.dart';
import 'package:inno_queue/core/widget/app_supertext.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:intl/intl.dart';

class NotificationTile extends StatefulWidget {
  final NotificationModel notificationModel;
  final int userId;

  const NotificationTile(this.notificationModel, this.userId, {Key? key})
      : super(key: key);

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSuperText(
              getText(widget.notificationModel),
              style: Theme.of(context).textTheme.notificationMessageTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat('kk:mm dd.MM.yyyy')
                  .format(widget.notificationModel.timestamp.toLocal()),
              style: Theme.of(context)
                  .textTheme
                  .notificationDateTextStyle
                  .copyWith(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  String getText(NotificationModel notificationModel) {
    String participantName = notificationModel.participantName;
    String queueName = notificationModel.queueName;
    int participantId = notificationModel.participantId;
    int userId = widget.userId;

    switch (notificationModel.msgType) {
      case 'YOUR_TURN':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOUR_TURN')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEIR_TURN')} **$queueName**";
      case 'SHOOK':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('SHOOK')} **$queueName**"
            : "";
      case 'FROZEN':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_FROZE')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_FROZE')} **$queueName**";
      case 'UNFROZEN':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_UNFROZE')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_UNFROZE')} **$queueName**";
      case 'JOINED_QUEUE':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_JOINED')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_JOINED')} **$queueName**";
      case 'LEFT_QUEUE':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_LEFT')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_LEFT')} **$queueName**";
      case 'DELETE_QUEUE':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_DELETED')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_DELETED')} **$queueName**";
      case 'COMPLETED':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_COMPLETED')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_COMPLETED')} **$queueName**";
      case 'SKIPPED':
        return userId == participantId
            ? "${AppLocalizations.of(context)!.translate('YOU_SKIPPED')} **$queueName**"
            : "$participantName ${AppLocalizations.of(context)!.translate('THEY_SKIPPED')} **$queueName**";
      default:
        return '';
    }
  }
}
