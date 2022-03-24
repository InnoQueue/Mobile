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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(defaultName), // todo -> text field
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => CupertinoSwitch(
                value: false,
                onChanged: (bool val) => _onChanged("n${index + 1}", val),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onChanged(String key, dynamic changedValue) {
    print("new val $changedValue");
    ApiSettingsService.setFields(defaultBody, {key: changedValue});
  }
}
