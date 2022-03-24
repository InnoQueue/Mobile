import 'package:dio/dio.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'api_base.dart';

class ApiSettings extends ApiBase {
  static Future<Response> editSettings(token, body) async {
    return ApiBase.dio.patch(
      "${ApiBase.baseUrl}/settings",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
      data: body,
    );
  }
}

class ApiSettingsService {
  static makeBody(
    Map<String, dynamic> defaultBody,
    Map<String, dynamic> toSet,
  ) {
    for (String field in defaultBody.keys) {
      if (toSet.containsKey(field)) {
        defaultBody[field] = toSet[field];
      }
    }
    return defaultBody;
  }

  static void setFields(
    Map<String, dynamic> defaultBody,
    Map<String, dynamic> toSet,
  ) async {
    final String token = await ApiBaseService.getToken();
    final body = makeBody(defaultBody, toSet);
    final data = (await ApiSettings.editSettings(token, body)).data;
    print("response data: $data");
  }
}
