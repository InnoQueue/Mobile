import 'package:dio/dio.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'api_base.dart';

class ApiNotifications extends ApiBase {
  static Future<Response> getNotifications(token) async {
    print("token $token");
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/notifications",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }
}

class ApiNotificationsService {
  static Future<List<NotificationModel>> getNotifications() async {
    final String token = await ApiBaseService.getToken();
    final response = await ApiNotifications.getNotifications(token);
    print(response);
    return [];
  }
}
