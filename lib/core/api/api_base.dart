import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/utils/cache_service.dart';

@Injectable()
class ApiBase {
  static final Dio dio = Dio();
  static const String baseUrl = 'https://innoqueue.herokuapp.com';

  static Future<String> getToken() async {
    return "11111"; // not implemented on backend yet
  }
}

class ApiBaseService {
  // todo : add caching for token on first start
  static Future<String> getToken() async {
    String token;
    token = await CacheService.checkToken("");
    if (token.isEmpty) {
      token = await ApiBase.getToken();
      CacheService.checkToken(token);
    }
    return token;
  }
}
