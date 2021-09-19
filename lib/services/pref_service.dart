import 'dart:convert';

import 'package:pref_demo/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {

  static storeUser(User user) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    await _pref.setString("user", stringUser);
  }

  static Future<User> loadUser() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    String stringUser = _pref.getString("user") ?? "";
    return User.fromJson(jsonDecode(stringUser));
  }

  static Future<bool> removeUser() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    return _pref.remove("user");
  }
}