import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/shared/models/token/token_model.dart';

@Injectable()
class ApiBase {
  static final Dio dio = Dio();
  static const String baseUrl = 'https://innoqueue.herokuapp.com';

  static Future<String> getToken() async {
    //return "sVZYTsX66nXILoxJ";
    return "11111";
  }
}

class ApiBaseService {
  // todo : add caching for token on first start
  static Future<String> getToken() async {
    String token;
    token = await CacheService.checkToken("");
    if (token.isEmpty) {
      token = await ApiBase.getToken();

      // var data = (await ApiBase.dio.get(
      //   "${ApiBase.baseUrl}/user/signup",
      // ))
      //     .data;

      // token = TokenModel.fromJson(data).token;
      // print(token);
      CacheService.checkToken(token);
    }
    return token;
  }
}
