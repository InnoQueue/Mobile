import 'package:flutter/material.dart';
import 'package:inno_queue/const/text_theme.dart';
import 'package:inno_queue/core/widget/app_supertext.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';
import 'package:intl/intl.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notificationModel;

  const NotificationTile(this.notificationModel, {Key? key}) : super(key: key);

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
              notificationModel.message ?? '',
              style: Theme.of(context).textTheme.notificationMessageTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat('kk:mm dd.MM.yyyy')
                  .format(notificationModel.timestamp!),
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
}
