import 'dart:convert';
import 'package:core_structure/app/data/data_interfaces/local_interfaces.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferentStorage extends PreferencesStorageInterfaces {

  Future<String?> getItem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? keyVal = prefs.getString(key);
    if (keyVal != null)
      return jsonDecode(keyVal);
    else
      return null;
  }

  Future<bool> setItem(String key, String data) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, data);
  }

  Future<bool> removeItem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

  @override
  Future<bool> clearPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }

  @override
  Future<bool> removeItemExample(String key) async {
    return await removeItem(key);
  }

  @override
  Future<bool> setItemExample(String key, String value) async {
    return await setItem(key, value);
  }

  @override
  Future<String?> getItemExample(String key)async {
    return await getItem(key);
  }
}
