import 'package:flutter/material.dart';

class LocaleSettings extends ChangeNotifier {
  static final LocaleSettings _instance = LocaleSettings._internal();
  factory LocaleSettings() => _instance;
  LocaleSettings._internal();

  Locale _locale = const Locale('en');
  Locale get locale => _locale;

  void setLocale(Locale newLocale) {
    if (newLocale == _locale) return;
    _locale = newLocale;
    notifyListeners();
  }
}
