import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
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
                    itemCount: 6,
                    itemBuilder: (context, index) => index != 5
                        ? Row(
                            children: [
                              Expanded(
                                child: NotificationSwitchLabel(
                                  SettingsRes.notificationLabels[index],
                                ),
                              ),
                              FlutterSwitch(
                                width: 60,
                                height: 30,
                                activeColor: Colors.grey[700] ?? Colors.black,
                                inactiveColor: Colors.grey[400] ?? Colors.white,
                                value: currentState["n${index + 1}"],
                                onToggle: (newValue) {
                                  _onChanged("n${index + 1}", newValue);
                                },
                              ),
                            ],
                          )
                        : const ThemeDropdownMenu(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
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

class ThemeDropdownMenu extends StatefulWidget {
  const ThemeDropdownMenu({Key? key}) : super(key: key);

  @override
  State<ThemeDropdownMenu> createState() => _ThemeDropdownMenuState();
}

class _ThemeDropdownMenuState extends State<ThemeDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return Row(
        children: [
          const Expanded(
            child: NotificationSwitchLabel('Theme'),
          ),
          DropdownButton<String>(
            dropdownColor: Theme.of(context).primaryColor,
            value: provider.currentTheme,
            items: const [
              DropdownMenuItem<String>(
                value: 'light',
                child: Text('Light', style: TextStyle(fontSize: 14)),
              ),
              DropdownMenuItem<String>(
                value: 'dark',
                child: Text('Dark', style: TextStyle(fontSize: 14)),
              ),
              DropdownMenuItem<String>(
                value: 'system',
                child: Text('System', style: TextStyle(fontSize: 14)),
              ),
            ],
            onChanged: (String? value) {
              provider.changeTheme(value ?? 'system');
            },
          ),
        ],
      );
    });
  }
}
