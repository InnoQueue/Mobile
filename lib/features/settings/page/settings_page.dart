import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/api/api_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final String defaultName = "Unnamed #41";

  late final Map<String, dynamic> defaultBody;

  late Map<String, dynamic> currentState; // todo -> bloc

  late TextEditingController _nameFieldController;

  @override
  void initState() {
    defaultBody = {
      "name": defaultName,
      "n1": true,
      "n2": true,
      "n3": true,
      "n4": true,
      "n5": true
    };
    currentState = defaultBody;
    _nameFieldController = TextEditingController(text: defaultName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextField(controller: _nameFieldController,), // todo -> text field
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => CupertinoSwitch(
                value: currentState["n${index + 1}"],
                onChanged: (bool val) => _onChanged("n${index + 1}", val),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onChanged(String key, dynamic changedValue) {
    ApiSettingsService.setFields(defaultBody, {key: changedValue});
    setState(() {
      currentState =
          ApiSettingsService.makeBody(defaultBody, {key: changedValue});
    });
  }
}
