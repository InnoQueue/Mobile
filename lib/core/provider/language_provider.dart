import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLanguage = 'system';

  LanguageProvider() {
    initialize();
  }

  Locale get locale {
    switch (currentLanguage) {
      case 'en':
        return const Locale('en', 'US');
      case 'ru':
        return const Locale('ru', 'RU');
      default:
        return const Locale('en', 'US');
    }
  }

  changeLnaguage(String language) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);

    currentLanguage = language;
    notifyListeners();
  }

  initialize() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    currentLanguage = _prefs.getString('language') ?? 'system';
    notifyListeners();
  }
}
