import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:provider/provider.dart';
import 'package:inno_queue/core/api/api_settings.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/core/provider/theme_provider.dart';
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
    super.initState();
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: serverDefaultBodyFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        controller: _nameFieldController,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AppButton(
                        text: 'Save name',
                        onPressed: () =>
                            _onChanged("name", _nameFieldController.text),
                      ),
                    ),
                  ],
                ), // todo -> text field
                const SizedBox(height: 24),
                Expanded(
                  child: ListView.separated(
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
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 4),
                  ),
                ),
                const SizedBox(height: 24),
                Consumer<ThemeProvider>(builder: (context, provider, child) {
                  return DropdownButton<String>(
                    value: provider.currentTheme,
                    items: [
                      //Light, dark, and system
                      DropdownMenuItem<String>(
                        value: 'light',
                        child: Text(
                          'Light',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),

                      DropdownMenuItem<String>(
                        value: 'dark',
                        child: Text(
                          'Dark',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'system',
                        child: Text(
                          'System',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ],
                    onChanged: (String? value) {
                      provider.changeTheme(value ?? 'system');
                    },
                  );
                }),
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
