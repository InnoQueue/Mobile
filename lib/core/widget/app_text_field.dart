import 'package:flutter/material.dart';
import 'package:inno_queue/helpers/app_localizations.dart';

class AppTextField extends StatelessWidget {
  final String? placeholder;
  final TextEditingController controller;

  const AppTextField({
    Key? key,
    required this.controller,
    this.placeholder = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 2,
      controller: controller,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.translate('input name') ??
            'input name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey, width: 2),
        ),
      ),
    );
  }
}
