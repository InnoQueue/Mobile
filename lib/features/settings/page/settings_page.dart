import 'dart:convert';

import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive/hive.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/api/api_settings.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/helpers/text_field_validator.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late var pages = [
    dartz.Tuple3(Icons.notifications_off_outlined,
        AppLocalizations.of(context)!.translate('notification settings') ?? "",
        () {
      getIt<AppRouter>().push(const NotificationSettingsRoute());
    }),
    dartz.Tuple3(Icons.lightbulb_outline,
        AppLocalizations.of(context)!.translate('theme') ?? "", () {
      getIt<AppRouter>().push(const ThemeSettingsRoute());
    }),
    dartz.Tuple3(CupertinoIcons.globe,
        AppLocalizations.of(context)!.translate('language') ?? "", () {
      getIt<AppRouter>().push(const LanguageSettingsRoute());
    }),
    dartz.Tuple3(
      Icons.mail_outline,
      AppLocalizations.of(context)!.translate('leave feedback') ?? "",
      _launchUrl,
    ),
  ];

  final String defaultName = "Unnamed";

  late Future<Map<String, dynamic>?> serverDefaultBodyFuture;
  Map<String, dynamic>? currentState; // todo -> bloc
  late TextEditingController _nameFieldController;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    openCachedSettings();
    serverDefaultBodyFuture = ApiSettingsService.getFields();
    serverDefaultBodyFuture.then((value) => setState(() {
          currentState = value;
          if (currentState != null) {
            _nameFieldController.text = currentState!['name'];
          }
        }));
    _nameFieldController = TextEditingController(text: defaultName);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: serverDefaultBodyFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (currentState == null) {
            return Container(
              color: Theme.of(context).primaryColorBrightness == Brightness.dark
                  ? Colors.grey[900]
                  : Colors.blueGrey[50],
              child: const Center(child: CustomCircularProgressIndicator()),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 32),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Row(
                    children: [
                      Expanded(
                        child: snapshot.hasData
                            ? TextFormField(
                                cursorColor: Colors.grey,
                                decoration: AppRes.inputDecoration,
                                controller: _nameFieldController,
                                validator: TextFieldValidator.validate,
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
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              _onChanged("name", _nameFieldController.text);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  color: Theme.of(context).primaryColor,
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

  void openCachedSettings() async {
    var settingsBox = await Hive.openBox("settings");
    if (settingsBox.length != 0) {
      print('returned settings from cache');
      currentState = jsonDecode(settingsBox.get("settings"));
    }
    setState(() {});
  }

  void _onChanged(String key, dynamic changedValue) {
    FocusManager.instance.primaryFocus?.unfocus();
    ApiSettingsService.setFields(currentState!, {key: changedValue});
    setState(() {
      currentState =
          ApiSettingsService.makeBody(currentState!, {key: changedValue});
    });
  }
}

void _launchUrl() async {
  final Uri _url = Uri.parse(
      'https://docs.google.com/forms/d/e/1FAIpQLSeqLF1x5XLIz3X-nzlEKssMpIar07aObwlZ9c0BZ0GfXYBEnw/viewform?usp=sf_link');
  if (!await launchUrl(_url)) {
    throw 'Could not launch';
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
