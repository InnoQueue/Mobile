import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  final String? title;

  AppBottomSheet({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Column(
          children: [
            Text(title ?? ''),
          ],
        );
      },
    );
  }
}
