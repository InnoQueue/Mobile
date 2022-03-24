import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

import 'api_base.dart';

@Injectable()
class ApiNotifications extends ApiBase {
  static Future<Response> getNotifications(token) async {
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
  static Future<List<List<NotificationModel>>> getNotifications() async {
    final String token = await ApiBaseService.getToken();
    final data = (await ApiNotifications.getNotifications(token)).data;
    List<NotificationModel> unread = [];
    List<NotificationModel> all = [];
    for (var notification in data['unread']) {
      unread.add(NotificationModel.fromJson(notification));
    }
    for (var notification in data['all']) {
      all.add(NotificationModel.fromJson(notification));
    }
    print(unread);
    print(all);
    return [unread, all];
  }
}
