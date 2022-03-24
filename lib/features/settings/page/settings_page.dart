import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/api/api_settings.dart';

class SettingsPage extends StatelessWidget {
  final String defaultName = "Unnamed #41";

  // final Map<String, dynamic> defaultBody = {
  //
  // };

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => CupertinoSwitch(
                value: false,
                onChanged: (bool changedValue) => _onChanged("n${index+1}", changedValue),
              ),
            ),
            Text(
              AppRes.settings,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged(String index, dynamic changedValue) {
    // ApiSettingsService.setModel(defaultBody, toSet)
  }
}
