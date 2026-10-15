import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  final SharedPreferences _prefs;

  SharedPrefs(this._prefs); // Constructor now takes SharedPreferences

  // All methods are now instance-based (no 'static')
  Future<bool> setBool(String key, bool value) async => await _prefs.setBool(key, value);
  Future<bool> setDouble(String key, double value) async => await _prefs.setDouble(key, value);
  Future<bool> setInt(String key, int value) async => await _prefs.setInt(key, value);
  Future<bool> setString(String key, String value) async => await _prefs.setString(key, value);

  Future<bool> setModel<T>(String key, T model) async {
    final String jsonString = jsonEncode(model);
    return await _prefs.setString(key, jsonString);
  }

  T? getModel<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    final String? jsonString = _prefs.getString(key);
    if (jsonString != null) {
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return fromJson(jsonMap);
    }
    return null;
  }

  bool getBool(String key) => _prefs.getBool(key) ?? false;
  double getDouble(String key) => _prefs.getDouble(key) ?? 0.0;
  int getInt(String key) => _prefs.getInt(key) ?? 0;
  String getString(String key) => _prefs.getString(key) ?? "";

  Future<bool> remove(String key) async => await _prefs.remove(key);
  Future<bool> clear() async {
    final String savedLocale = getString('selected_locale');
    final bool result = await _prefs.clear();
    if (savedLocale.isNotEmpty) {
      await setString('selected_locale', savedLocale);
    }
    return result;
  }
}