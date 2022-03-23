import 'package:flutter/material.dart';
import 'package:inno_queue/core/widget/app_bottom_sheet.dart';

class QueueBottomSheet extends StatelessWidget {
  const QueueBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: 'bottom sheet test',
    );
  }
}
