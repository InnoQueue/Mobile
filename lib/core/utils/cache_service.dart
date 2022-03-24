// this function checks if it is our first launch for the app
// if it is, we reflect it in shared preferences so that next time
// we open application, it has firstLaunch=false
import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheService {

  static Future<bool> checkFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? isFirstLaunch = prefs.getBool('isFirstLaunch');
    await prefs.setBool('isFirstLaunch', false);
    return isFirstLaunch ?? true;
  }
  static void saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }


}