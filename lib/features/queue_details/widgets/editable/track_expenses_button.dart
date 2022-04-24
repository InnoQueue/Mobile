import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:inno_queue/helpers/app_localizations.dart';

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
        Text(
          AppLocalizations.of(context)!.translate('track expenses') ??
              'Track expenses',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        FlutterSwitch(
          width: 60,
          height: 30,
          activeColor: Colors.grey[700] ?? Colors.black,
          inactiveColor: Colors.grey[400] ?? Colors.white,
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
