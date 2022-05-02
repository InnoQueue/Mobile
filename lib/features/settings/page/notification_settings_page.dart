import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:inno_queue/core/api/api_settings.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/settings/page/settings_const.dart';
import 'package:inno_queue/features/settings/widget/notification_switch_label.dart';
import 'package:provider/provider.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  late final List defaultBody;
  late Future<Map<String, dynamic>> serverDefaultBodyFuture;

  late Map<String, dynamic> currentState; // todo -> bloc

  @override
  void initState() {
    super.initState();
    defaultBody = [
      "completed",
      "skipped",
      "joined_queue",
      "freeze",
      "left_queue",
      "your_turn",
    ];

    serverDefaultBodyFuture = ApiSettingsService.getFields();
    serverDefaultBodyFuture.then((value) => setState(() {
          currentState = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: serverDefaultBodyFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Theme.of(context).primaryColorBrightness == Brightness.dark
                  ? Colors.grey[900]
                  : Colors.blueGrey[50],
              child: const Center(child: CustomCircularProgressIndicator()),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 32),
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) => Row(
                children: [
                  Expanded(
                    child: NotificationSwitchLabel(
                      SettingsRes.notificationLabels[index],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FlutterSwitch(
                    width: 60,
                    height: 30,
                    activeColor: Colors.grey[700] ?? Colors.black,
                    inactiveColor: Colors.grey[400] ?? Colors.white,
                    value: currentState[defaultBody[index]],
                    onToggle: (newValue) {
                      _onChanged(defaultBody[index], newValue);
                    },
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
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
