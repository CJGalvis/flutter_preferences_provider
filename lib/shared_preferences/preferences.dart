import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = 'Camilo';
  static bool _isDarkmode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(value) {
    _name = value;
    _prefs.setString('name', value);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }

  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkmode;
  }

  static set isDarkMode(value) {
    _isDarkmode = value;
    _prefs.setBool('isDarkMode', value);
  }
}
