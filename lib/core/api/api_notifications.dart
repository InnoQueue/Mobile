import 'dart:convert';

import 'package:analyzer_plugin/utilities/pair.dart';
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

  static Future<Response> getNew(token) async {
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/notifications/new",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }
}

class ApiNotificationsService {
  static Future<Pair<List<NotificationModel>, List<NotificationModel>>>
      getNotifications() async {
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
    return Pair(unread, all);
  }

  static Future<bool> getNew() async {
    final String token = await ApiBaseService.getToken();
    final data = (await ApiNotifications.getNew(token)).data;
    return data['any_new'];
  }
}
