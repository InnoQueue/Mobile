import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/api/api_settings.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var pages = [
    dartz.Tuple3(Icons.notifications_off_outlined, 'Notification settings', () {
      getIt<AppRouter>().push(const NotificationSettingsRoute());
    }),
    dartz.Tuple3(Icons.lightbulb_outline, 'Theme', () {
      getIt<AppRouter>().push(const ThemeSettingsRoute());
    }),
    dartz.Tuple3(CupertinoIcons.globe, 'Language', () {
      getIt<AppRouter>().push(const LanguageSettingsRoute());
    }),
    dartz.Tuple3(Icons.mail_outline, 'Leave feedback', () {}),
  ];

  final String defaultName = "Unnamed";

  late Future<Map<String, dynamic>> serverDefaultBodyFuture;
  late Map<String, dynamic> currentState; // todo -> bloc
  late TextEditingController _nameFieldController;

  @override
  void initState() {
    super.initState();
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
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: snapshot.hasData
                          ? TextField(
                              cursorColor: Colors.grey,
                              decoration: AppRes.inputDecoration,
                              controller: _nameFieldController,
                            )
                          : const SpinKitThreeBounce(
                              size: 20,
                              color: Colors.grey,
                            ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AppButton(
                        text: AppLocalizations.of(context)!
                                .translate('save name') ??
                            'Save name',
                        onPressed: () =>
                            _onChanged("name", _nameFieldController.text),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return SettingTile(
                        icon: pages[index].value1,
                        title: pages[index].value2,
                        onTap: pages[index].value3,
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                      height: 1,
                    ),
                    itemCount: pages.length,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void _onChanged(String key, dynamic changedValue) {
    FocusManager.instance.primaryFocus?.unfocus();
    ApiSettingsService.setFields(currentState, {key: changedValue});
    setState(() {
      currentState =
          ApiSettingsService.makeBody(currentState, {key: changedValue});
    });
  }
}

class SettingTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const SettingTile({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 50,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(icon),
          ),
          Text(title),
        ]),
      ),
      onTap: () => onTap(),
    );
  }
}
