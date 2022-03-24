import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;

  const AppButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text ?? '',
      ),
    );
  }
}
