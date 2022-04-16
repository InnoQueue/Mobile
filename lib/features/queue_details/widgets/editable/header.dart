import 'dart:collection';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

class EditableHeader extends StatefulWidget {
  final QueueModel queueModel;
  final Function updateName;
  final Function updateColor;
  const EditableHeader(
      {required this.queueModel,
      required this.updateColor,
      required this.updateName,
      Key? key})
      : super(key: key);

  @override
  State<EditableHeader> createState() => _EditableHeaderState();
}

class _EditableHeaderState extends State<EditableHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            _Avatar(queueModel: widget.queueModel),
            _EditButton(
              color: widget.queueModel.color,
              updateColor: widget.updateColor,
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        IntrinsicWidth(
          child: TextField(
            controller: TextEditingController()..text = widget.queueModel.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            cursorColor: Colors.black,
            cursorWidth: 1.5,
            decoration: const InputDecoration(
              hintText: "Queue name",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            onSubmitted: (newValue) {
              widget.updateName(newValue);
            },
          ),
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final QueueModel queueModel;
  const _Avatar({
    required this.queueModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors[queueModel.color],
      ),
    );
  }
}

class _EditButton extends StatelessWidget {
  final String color;
  final Function updateColor;
  const _EditButton({
    required this.color,
    required this.updateColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border:
              Border.all(width: 2, color: Color(Colors.blueGrey[50]!.value)),
        ),
        child: const Icon(
          Icons.edit,
          color: Colors.black,
          size: 15,
        ),
      ),
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return _UpdateColorBottomSheet(
              currentColor: color,
              updateColor: updateColor,
            );
          },
        );
      },
    );
  }
}

class _UpdateColorBottomSheet extends StatefulWidget {
  final String currentColor;
  final Function updateColor;
  const _UpdateColorBottomSheet({
    required this.currentColor,
    required this.updateColor,
    Key? key,
  }) : super(key: key);

  @override
  State<_UpdateColorBottomSheet> createState() =>
      _UpdateColorBottomSheetState();
}

class _UpdateColorBottomSheetState extends State<_UpdateColorBottomSheet> {
  late Color _currentColor = colors[widget.currentColor] ?? Colors.white;
  late String _currentColorName = widget.currentColor;
  final Map<ColorSwatch<int>, String> _colorNames = {};

  @override
  void initState() {
    super.initState();

    colors.forEach((key, value) {
      _colorNames[ColorTools.createPrimarySwatch(value)] = key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      content: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Choose color',
              style: Theme.of(context).textTheme.bottomSheetTitleStyle,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
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
              child: Text(
                'Update Color',
                style: Theme.of(context)
                    .textTheme
                    .largeButtonTextSrtyle
                    .copyWith(color: Colors.white),
              ),
            ),
            onPressed: () {
              widget.updateColor(_currentColorName);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
