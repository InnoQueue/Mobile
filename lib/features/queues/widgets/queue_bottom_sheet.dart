import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:inno_queue/core/core.dart';

class QueueBottomSheet extends StatelessWidget {
  final List<Widget>? children;

  final nameFieldController = TextEditingController();

  QueueBottomSheet({
    Key? key,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      content: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Create new queue',
              style: bottomSheetTitleStyle,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                AppTextField(controller: nameFieldController),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      'Track expenses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    FlutterSwitch(value: false, onToggle: (newValue) {})
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            child: Container(
              height: 55,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Create',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          ...(children ?? []),
        ],
      ),
    );
  }
}
