import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

import 'api_base.dart';

@Injectable()
class ApiQueues extends ApiBase {
  static Future<Response> getQueues(token) async {
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/queues",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> addQueue(
    token, {
    required String name,
    required String color,
    required bool trackExpenses,
  }) async {
    var params = {
      "name": name,
      "color": color,
      "track_expenses": trackExpenses,
    };

    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
      data: jsonEncode(params),
    );
  }

  static Future<Response> leaveQueue(
    token, {
    required QueueModel queue,
  }) async {
    return ApiBase.dio.delete(
      "${ApiBase.baseUrl}/queues/${queue.id}",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> freezeQueue(
    token, {
    required QueueModel queue,
  }) async {
    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues/freeze/${queue.id}",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> shakeUser(
    token, {
    required QueueModel queue,
  }) async {
    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues/shake/${queue.id}",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }
}

class ApiQueuesService {
  static Future<List<List<QueueModel>>> getQueues() async {
    final String token = await ApiBaseService.getToken();
    final data = (await ApiQueues.getQueues(token)).data;
    List<QueueModel> active = [];
    List<QueueModel> frozen = [];
    for (var queue in data['active']) {
      active.add(QueueModel.fromJson(queue));
    }
    for (var queue in data['frozen']) {
      frozen.add(QueueModel.fromJson(queue));
    }
    return [active, frozen];
  }

  static Future<void> addQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  }) async {
    final String token = await ApiBaseService.getToken();
    await ApiQueues.addQueue(
      token,
      name: name,
      color: color,
      trackExpenses: trackExpenses,
    );
  }

  static Future<void> leaveQueue({
    required QueueModel queue,
  }) async {
    final String token = await ApiBaseService.getToken();
    await ApiQueues.leaveQueue(
      token,
      queue: queue,
    );
  }

  static Future<void> freezeQueue({
    required QueueModel queue,
  }) async {
    final String token = await ApiBaseService.getToken();
    await ApiQueues.freezeQueue(
      token,
      queue: queue,
    );
  }

  static Future<void> shakeUser({
    required QueueModel queue,
  }) async {
    final String token = await ApiBaseService.getToken();
    await ApiQueues.shakeUser(
      token,
      queue: queue,
    );
  }
}
