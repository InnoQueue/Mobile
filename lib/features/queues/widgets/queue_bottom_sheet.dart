import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/queues/bloc/queues_bloc.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';

class QueueBottomSheet extends StatefulWidget {
  final List<Widget>? children;

  const QueueBottomSheet({
    Key? key,
    this.children,
  }) : super(key: key);

  @override
  State<QueueBottomSheet> createState() => _QueueBottomSheetState();
}

class _QueueBottomSheetState extends State<QueueBottomSheet> {
  bool _toggleValue = false;
  Color _currentColor = colors['RED'] ?? Colors.white;
  String _currentColorName = 'RED';
  final Map<ColorSwatch<int>, String> _colorNames = {};
  final nameFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();

    colors.forEach((key, value) {
      _colorNames[ColorTools.createPrimarySwatch(value)] = key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<QueuesBloc>(),
      child: AppBottomSheet(
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
                  ColorPicker(
                    pickersEnabled: const {
                      ColorPickerType.accent: false,
                      ColorPickerType.primary: false,
                      ColorPickerType.custom: true
                    },
                    customColorSwatchesAndNames: _colorNames,
                    spacing: 5,
                    enableShadesSelection: false,
                    color: _currentColor,
                    onColorChanged: (Color color) => setState(
                      () {
                        _currentColor = color;
                        _currentColorName = colors.keys.firstWhere(
                            (k) =>
                                (colors[k] ?? Colors.white).value ==
                                _currentColor.value,
                            orElse: () => 'RED');
                      },
                    ),
                    width: 30,
                    height: 30,
                    borderRadius: 5,
                  ),
                  const SizedBox(height: 15),
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
                      FlutterSwitch(
                        width: 60,
                        height: 30,
                        activeColor: Colors.black.withOpacity(0.7),
                        value: _toggleValue,
                        onToggle: (newValue) {
                          setState(() {
                            _toggleValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.8)),
              ),
              child: Container(
                height: 55,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: _onPressed,
            ),
            ...(widget.children ?? []),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    context.read<QueuesBloc>().add(
          QueuesEvent.addQueue(
            name: nameFieldController.text,
            color: _currentColorName,
            trackExpenses: _toggleValue,
          ),
        );
    Navigator.pop(context);
  }
}
