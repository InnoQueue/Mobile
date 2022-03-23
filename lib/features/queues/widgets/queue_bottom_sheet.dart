import 'package:flutter/material.dart';
import 'package:inno_queue/core/widget/app_bottom_sheet.dart';
import 'package:inno_queue/core/widget/app_text_field.dart';

class CreateQueueBottomSheet extends StatelessWidget {
  final List<Widget>? children;

  final nameFieldController = TextEditingController();

  CreateQueueBottomSheet({
    Key? key,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: 'Bottom sheet on queue page',
      children: [
        AppTextField(
          controller: nameFieldController,
        ),
        ...(children ?? []),
      ],
    );
  }
}
