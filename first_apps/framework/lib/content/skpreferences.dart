import 'package:shared_preferences/shared_preferences.dart';

class SKPreferences {
  static const SK = "SK_";

  static final SKPreferences _singleton = new SKPreferences._internal();

  static Future<SharedPreferences> _sharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  factory SKPreferences() {
    return _singleton;
  }

  SKPreferences._internal();

  static void clear() async {
    final prefs = await _sharedPreferences();
    prefs.clear();
  }

  static Future set({String key, dynamic value}) async {
    final prefs = await _sharedPreferences();
    if (value is bool) {
      prefs.setBool(SK + key, value);
    } else if (value is double) {
      prefs.setDouble(SK + key, value);
    } else if (value is int) {
      prefs.setInt(SK + key, value);
    } else if (value is String) {
      prefs.setString(SK + key, value);
    } else {
      prefs.setStringList(SK + key, value);
    }
  }

  static Future remove({String key}) async {
    final prefs = await _sharedPreferences();
    prefs.remove(SK + key);
  }

  static Future<String> getString({String key, String ifNotExists}) async {
    String value = ifNotExists;
    final prefs = await _sharedPreferences();
    value = prefs.getString(SK + key);
    return value ?? ifNotExists;
  }

  static Future<bool> getBoolean({String key, bool ifNotExists}) async {
    bool value = ifNotExists;
    final prefs = await _sharedPreferences();
    value = prefs.getBool(SK + key);
    return value ?? ifNotExists;
  }

  static Future<double> getDouble({String key, double ifNotExists}) async {
    double value = ifNotExists;
    final prefs = await _sharedPreferences();
    value = prefs.getDouble(SK + key);
    return value ?? ifNotExists;
  }

  static Future<int> getInt({String key, int ifNotExists}) async {
    int value = ifNotExists;
    final prefs = await _sharedPreferences();
    value = prefs.getInt(SK + key);
    return value ?? ifNotExists;
  }

  static Future<List<String>> getStringArray(
      {String key, List<String> ifNotExists}) async {
    List<String> value = ifNotExists;
    final prefs = await _sharedPreferences();
    value = prefs.getStringList(SK + key);
    return value ?? ifNotExists;
  }
}
