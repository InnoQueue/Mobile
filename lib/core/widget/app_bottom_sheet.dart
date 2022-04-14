import 'package:flutter/material.dart';

const TextStyle bottomSheetTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

class AppBottomSheet extends StatelessWidget {
  final Widget? content;

  const AppBottomSheet({
    Key? key,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: BottomSheet(
        enableDrag: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            ),
            child: IntrinsicHeight(child: content),
          );
        },
      ),
    );
  }
}
