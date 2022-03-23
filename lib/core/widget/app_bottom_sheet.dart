import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  final String? title;

  const AppBottomSheet({
    Key? key,
    this.title,
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(title ?? ''),
                  ElevatedButton(
                    child: const Text('Close BottomSheet'),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
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
    builder: (BuildContext context) {
      return bottomSheet;
    },
  );
}
