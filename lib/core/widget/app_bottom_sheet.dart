import 'package:flutter/material.dart';
import 'package:inno_queue/features/queues/widgets/queue_bottom_sheet.dart';

void summonBottomSheet(context, bottomSheet) {
  showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
    ),
    builder: (BuildContext context) {
      return bottomSheet;
    },
  );
}

class AppBottomSheet extends StatelessWidget {
  final String? title;

  AppBottomSheet({
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
          color: Colors.white,
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
