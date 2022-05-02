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
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 32),
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
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return Row(
        children: [
          const Expanded(
            child: NotificationSwitchLabel('theme'),
          ),
          DropdownButton<String>(
            dropdownColor: Theme.of(context).primaryColor,
            value: provider.currentTheme,
            items: [
              DropdownMenuItem<String>(
                value: 'light',
                child: Text(
                  AppLocalizations.of(context)!.translate('light') ?? 'Light',
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              DropdownMenuItem<String>(
                value: 'dark',
                child: Text(
                  AppLocalizations.of(context)!.translate('dark') ?? 'Dark',
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              DropdownMenuItem<String>(
                value: 'system',
                child: Text(
                  AppLocalizations.of(context)!.translate('system') ?? 'System',
                  style: const TextStyle(fontSize: 14),
                ),
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
