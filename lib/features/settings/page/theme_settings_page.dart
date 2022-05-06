import 'package:flutter/material.dart';
import 'package:inno_queue/core/provider/theme_provider.dart';
import 'package:inno_queue/features/settings/widget/notification_switch_label.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Theme.of(context).primaryColorBrightness == Brightness.dark
          ? Colors.grey[900]
          : Colors.blueGrey[50],
      child: const ThemeDropdownMenu(),
    );
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
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            RadioListTile(
              value: 'light',
              title: Text(
                AppLocalizations.of(context)!.translate('light') ?? 'Light',
                style: const TextStyle(fontSize: 14),
              ),
              groupValue: provider.currentTheme,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (String? value) {
                provider.changeTheme(value ?? 'system');
              },
            ),
            RadioListTile(
              value: 'dark',
              title: Text(
                AppLocalizations.of(context)!.translate('dark') ?? 'Dark',
                style: const TextStyle(fontSize: 14),
              ),
              groupValue: provider.currentTheme,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (String? value) {
                provider.changeTheme(value ?? 'system');
              },
            ),
            RadioListTile(
              value: 'system',
              title: Text(
                AppLocalizations.of(context)!.translate('system') ?? 'System',
                style: const TextStyle(fontSize: 14),
              ),
              groupValue: provider.currentTheme,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (String? value) {
                provider.changeTheme(value ?? 'system');
              },
            ),
          ],
        );
      },
    );
  }
}
