import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/shared/models/token/token_model.dart';

@Injectable()
class ApiBase {
  static final Dio dio = Dio(
    BaseOptions(
        receiveDataWhenStatusError: true,
        connectTimeout: 45 * 1000, // 60 seconds
        receiveTimeout: 45 * 1000 // 60 seconds
        ),
  );
  static const String baseUrl = 'https://innoqueue.herokuapp.com';

  static Future<TokenModel> getToken(String name, String fcmToken) async {
    var params = {
      "user_name": name,
      "fcm_token": fcmToken,
    };
    var data = (await ApiBase.dio.post(
      "${ApiBase.baseUrl}/user/signup",
      data: jsonEncode(params),
    ))
        .data;

    return TokenModel.fromJson(data);
  }
}

class ApiBaseService {
  static Future<String> getToken({String? name}) async {
    String token = "";
    bool tokenPresent = await CacheService.checkToken();
    if (!tokenPresent) {

      String? fcmToken = (Platform.isAndroid ? await FirebaseMessaging.instance.getToken() : "<ios-token>");
      TokenModel tokenModel =
          await ApiBase.getToken(name ?? "", fcmToken ?? "");
      token = tokenModel.token;
      CacheService.setToken(token);
      CacheService.setUserId(tokenModel.userId);
    } else {
      token = await CacheService.getToken();
    }
    return token;
  }
}
