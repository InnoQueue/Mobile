import 'package:flutter/material.dart';

class NotificationSwitchLabel extends StatelessWidget {
  final String label;

  const NotificationSwitchLabel(
    this.label, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 14,
      ),
    );
  }
}
