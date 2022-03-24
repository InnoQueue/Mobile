import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/api/api_settings.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/settings/page/settings_const.dart';
import 'package:inno_queue/features/settings/widget/notification_switch_label.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final String defaultName = "Unnamed #41";

  late final Map<String, dynamic> defaultBody;
  late Future<Map<String, dynamic>> serverDefaultBodyFuture;

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
    serverDefaultBodyFuture = ApiSettingsService.getFields();
    serverDefaultBodyFuture.then((value) => setState(() {
          currentState = value;
          _nameFieldController.text = value['name'];
        }));
    _nameFieldController = TextEditingController(text: defaultName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: serverDefaultBodyFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return SizedBox.shrink();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        controller: _nameFieldController,
                      ),
                    ),
                    AppButton(
                      text: 'Save name',
                      onPressed: () =>
                          _onChanged("name", _nameFieldController.text),
                    ),
                  ],
                ), // todo -> text field
                const SizedBox(height: 24),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => Row(
                      children: [
                        Expanded(
                          child: NotificationSwitchLabel(
                            SettingsRes.notificationLabels[index],
                          ),
                        ),
                        CupertinoSwitch(
                          value: currentState["n${index + 1}"],
                          onChanged: (bool val) =>
                              _onChanged("n${index + 1}", val),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onChanged(String key, dynamic changedValue) {
    ApiSettingsService.setFields(currentState, {key: changedValue});
    setState(() {
      currentState =
          ApiSettingsService.makeBody(currentState, {key: changedValue});
    });
  }
}
