import 'package:flutter/material.dart';
import 'package:inno_queue/core/provider/language_provider.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      // ignore: deprecated_member_use
      color: Theme.of(context).primaryColorBrightness == Brightness.dark
          ? Colors.grey[900]
          : Colors.blueGrey[50],
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
    return Consumer<LanguageProvider>(
      builder: (context, provider, child) {
        if (!AppLocalizations.delegate
            .isSupported(Locale(provider.currentLanguage, ''))) {
          provider.currentLanguage =
              Localizations.localeOf(context).languageCode;
        }
        return Column(
          children: [
            RadioListTile(
              value: 'ru',
              title: Text(
                AppLocalizations.of(context)!.translate('ru') ?? 'Russian',
                style: const TextStyle(fontSize: 14),
              ),
              groupValue: provider.currentLanguage,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (String? value) {
                provider.changeLnaguage(value ?? 'en');
              },
            ),
            RadioListTile(
              value: 'en',
              title: Text(
                AppLocalizations.of(context)!.translate('en') ?? 'English',
                style: const TextStyle(fontSize: 14),
              ),
              groupValue: provider.currentLanguage,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (String? value) {
                provider.changeLnaguage(value ?? 'en');
              },
            )
          ],
        );
      },
    );
  }
}
