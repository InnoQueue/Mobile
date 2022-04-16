import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TrackExpensesButton extends StatefulWidget {
  final bool initValue;
  final Function updateTracker;
  const TrackExpensesButton({
    required this.initValue,
    required this.updateTracker,
    Key? key,
  }) : super(key: key);

  @override
  State<TrackExpensesButton> createState() => _TrackExpensesButtonState();
}

class _TrackExpensesButtonState extends State<TrackExpensesButton> {
  late bool _toggleValue = widget.initValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Track expenses',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        FlutterSwitch(
          width: 60,
          height: 30,
          activeColor: Colors.black.withOpacity(0.7),
          value: _toggleValue,
          onToggle: (newValue) {
            setState(() {
              _toggleValue = newValue;
              widget.updateTracker(newValue);
            });
          },
        ),
      ],
    );
  }
}
