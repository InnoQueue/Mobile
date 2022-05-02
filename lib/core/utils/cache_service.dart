// this function checks if it is our first launch for the app
// if it is, we reflect it in shared preferences so that next time
// we open application, it has firstLaunch=false
import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheService {
  static Future<bool> checkFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? isFirstLaunch = prefs.getBool('isFirstLaunch');
    bool result = isFirstLaunch ?? true;
    if (result) {
      await removeOldToken();
    }
    return isFirstLaunch ?? true;
  }

  static Future<bool> removeOldToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    return true;
  }

  static Future<bool> checkToken() async {
    final prefs = await SharedPreferences.getInstance();
    final String? tokenCached = prefs.getString('token');
    if (tokenCached == null) {
      return false;
    }
    return true;
  }

  static Future<bool> setToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    return true;
  }

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    return token ?? "";
  }

  static Future<bool> setUserId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('user_id', id);
    return true;
  }

  static Future<int> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    int? id = prefs.getInt('user_id');
    return id ?? -1;
  }
}
