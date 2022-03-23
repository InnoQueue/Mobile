import 'package:flutter/material.dart';

const TextStyle bottomSheetTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

class AppBottomSheet extends StatelessWidget {
  final String? title;
  final List<Widget>? children;

  const AppBottomSheet({
    Key? key,
    this.title,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
          ),
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title ?? '',
                  style: bottomSheetTitleStyle,
                ),
                // ElevatedButton(
                //   child: const Text('Close BottomSheet'),
                //   onPressed: () => Navigator.pop(context),
                // ),
                ...(children ?? []),
              ],
            ),
          ),
        );
      },
    );
  }
}

void summonBottomSheet(context, bottomSheet) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return bottomSheet;
    },
  );
}
