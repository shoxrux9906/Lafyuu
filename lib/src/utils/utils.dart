import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Future<bool> isValid(String arg1, String arg2) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var email = prefs.getString("name") ?? "";
    var password = prefs.getString("password1") ?? "";

    var k = true;

    if (arg1.isEmpty) {
      k = false;
    } else if (arg2.isEmpty) {
      k = false;
    }
    return k && arg1 == email && arg2 == password;
  }

  static Future<bool> isValidPassword(String arg1) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var k = true;
    var password = prefs.getString("password1") ?? "";

    if (arg1.isEmpty) {
      k = false;
    }

    return k && arg1 == password;
  }

  static Future<bool> isValidPasNew(String arg) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var k = true;
    var newPAssword = prefs.getString("newPassword") ?? "";

    if (arg.isEmpty) {
      k = false;
    }
    return k && arg == newPAssword;
  }
}
