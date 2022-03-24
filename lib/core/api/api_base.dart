import 'package:dio/dio.dart';
import 'package:inno_queue/core/utils/cache_service.dart';

class ApiBase {

  static final Dio _dio = Dio();
  static const String _baseUrl = 'https://innoqueue.herokuapp.com';

  static Future<String> getToken() async {
    return "11111"; // not implemented on backend yet
  }

}

class ApiBaseService {

  static Future<String> getToken() async {
    String token;
    bool isFirstLaunch = await CacheService.checkFirstLaunch();
    if (isFirstLaunch) {
      token = await ApiBase.getToken();
      if (token.isNotEmpty) {
        CacheService.saveToken(token);
      }
    } else {
      token = await CacheService.getToken();
    }
    return token;
  }

}
