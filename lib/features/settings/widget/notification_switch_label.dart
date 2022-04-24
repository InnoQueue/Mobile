import 'package:flutter/material.dart';
import 'package:inno_queue/helpers/app_localizations.dart';

class NotificationSwitchLabel extends StatelessWidget {
  final String label;

  const NotificationSwitchLabel(
    this.label, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.translate(label) ?? label,
      style: const TextStyle(fontSize: 14, height: 1.5),
    );
  }
}
