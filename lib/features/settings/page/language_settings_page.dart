import 'package:flutter/material.dart';
import 'package:inno_queue/core/provider/language_provider.dart';
import 'package:inno_queue/features/settings/widget/notification_switch_label.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 32),
      child: const LanguageDropdownMenu(),
    );
  }
}

class LanguageDropdownMenu extends StatefulWidget {
  const LanguageDropdownMenu({Key? key}) : super(key: key);

  @override
  State<LanguageDropdownMenu> createState() => _LanguageDropdownMenuState();
}

class _LanguageDropdownMenuState extends State<LanguageDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(builder: (context, provider, child) {
      if (!AppLocalizations.delegate
          .isSupported(Locale(provider.currentLanguage, ''))) {
        provider.currentLanguage = Localizations.localeOf(context).languageCode;
      }
      return Row(
        children: [
          const Expanded(
            child: NotificationSwitchLabel('Language'),
          ),
          DropdownButton<String>(
            dropdownColor: Theme.of(context).primaryColor,
            value: provider.currentLanguage,
            items: [
              DropdownMenuItem<String>(
                value: 'ru',
                child: Text(
                  AppLocalizations.of(context)!.translate('ru') ?? 'Russian',
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              DropdownMenuItem<String>(
                value: 'en',
                child: Text(
                  AppLocalizations.of(context)!.translate('en') ?? 'English',
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
            onChanged: (String? value) {
              provider.changeLnaguage(value ?? 'en');
            },
          ),
        ],
      );
    });
  }
}
