import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/shared/models/token/token_model.dart';

@Injectable()
class ApiBase {
  static final Dio dio = Dio();
  static const String baseUrl = 'https://innoqueue.herokuapp.com';

  static Future<String> getToken(String name) async {
    var params = {
      "user_name": name,
    };
    var data = (await ApiBase.dio.post(
      "${ApiBase.baseUrl}/user/signup",
      data: jsonEncode(params),
    ))
        .data;

    return TokenModel.fromJson(data).token;
  }
}

class ApiBaseService {
  // todo : add caching for token on first start
  static Future<String> getToken({String? name}) async {
    String token = "";
    bool tokenPresent = await CacheService.checkToken();
    if (!tokenPresent) {
      print('NAAAAAAAAAAAME ' + (name ?? ""));
      token = await ApiBase.getToken(name ?? "");
      CacheService.setToken(token);
    } else {
      token = await CacheService.getToken();
    }
    return token;
  }
}
