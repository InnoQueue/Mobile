import 'dart:convert';

import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/try_connect.dart';
import 'package:inno_queue/shared/models/pincode/pincode_model.dart';

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

  static Future<Response> getQueue(token, {required int id}) async {
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/queues/$id",
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
    required int id,
  }) async {
    return ApiBase.dio.delete(
      "${ApiBase.baseUrl}/queues/$id",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> freezeQueue(
    token, {
    required int id,
  }) async {
    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues/freeze/$id",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> unfreezeQueue(
    token, {
    required int id,
  }) async {
    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues/unfreeze/$id",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> shakeUser(
    token, {
    required int id,
  }) async {
    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues/shake/$id",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> inviteUser(
    token, {
    required int id,
  }) async {
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/queues/invite/$id",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> joinQueue(
    token, {
    String? pincode,
    String? qrcode,
  }) async {
    var params = {};
    if (pincode != null) {
      params = {
        "pin_code": pincode,
      };
    }

    if (qrcode != null) {
      params = {
        "qr_code": qrcode,
      };
    }

    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/queues/join/",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
      data: jsonEncode(params),
    );
  }

  static Future<Response> updateQueue(
    token, {
    required QueueDetailsModel queueDetails,
  }) async {
    var params = {
      "id": queueDetails.id,
      "name": queueDetails.name,
      "color": queueDetails.color,
      "track_expenses": queueDetails.trackExpenses,
      "participants": queueDetails.participants.map((e) => e.id).toList(),
    };

    return ApiBase.dio.patch(
      "${ApiBase.baseUrl}/queues",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
      data: params,
    );
  }
}

class ApiQueuesService {
  static Future<Pair<List<QueueModel>, List<QueueModel>>?> getQueues() async {
    final String token = await ApiBaseService.getToken();

    var query = await HandledResponse.query(
        () async => await ApiQueues.getQueues(token));

    return query.fold((l) => null, (r) {
      List<QueueModel> active = [];
      List<QueueModel> frozen = [];
      for (var queue in r.data['active']) {
        active.add(QueueModel.fromJson(queue));
      }
      for (var queue in r.data['frozen']) {
        frozen.add(QueueModel.fromJson(queue));
      }
      return Pair(active, frozen);
    });
  }

  static Future<QueueDetailsModel?> getQueue({
    required int id,
    required int? hash,
    required bool checkCache,
  }) async {
    String name = "queue" + id.toString();

    if (checkCache) {
      var queueBox = await Hive.openBox(name);
      if (queueBox.length != 0) {
        if (queueBox.keys.first != null && queueBox.keys.first == hash) {
          print('returned from cache');
          return queueBox.get(hash);
        }
      }
    }

    final String token = await ApiBaseService.getToken();

    var query = await HandledResponse.query(
        () async => await ApiQueues.getQueue(token, id: id));

    return query.fold((l) => null, (r) async {
      QueueDetailsModel queueDetails = QueueDetailsModel.fromJson(r.data);

      var queueBox = await Hive.openBox(name);
      queueBox.deleteAll(queueBox.keys);
      queueBox.put(hash ?? queueDetails.hash, queueDetails);

      print('added to cache');
      return QueueDetailsModel.fromJson(r.data);
    });
  }

  static Future<void> addQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  }) async {
    final String token = await ApiBaseService.getToken();

    await HandledResponse.query(
      () async => await ApiQueues.addQueue(
        token,
        name: name,
        color: color,
        trackExpenses: trackExpenses,
      ),
    );
  }

  static Future<void> leaveQueue({
    required int id,
  }) async {
    final String token = await ApiBaseService.getToken();

    await HandledResponse.query(
      () async => await ApiQueues.leaveQueue(
        token,
        id: id,
      ),
    );
  }

  static Future<void> freezeQueue({
    required int id,
  }) async {
    final String token = await ApiBaseService.getToken();

    await HandledResponse.query(
      () async => await ApiQueues.freezeQueue(
        token,
        id: id,
      ),
    );
  }

  static Future<void> unfreezeQueue({
    required int id,
  }) async {
    final String token = await ApiBaseService.getToken();

    await HandledResponse.query(
      () async => await ApiQueues.unfreezeQueue(
        token,
        id: id,
      ),
    );
  }

  static Future<void> updateQueue({
    required QueueDetailsModel queueDetails,
  }) async {
    final String token = await ApiBaseService.getToken();

    await HandledResponse.query(
      () async => await ApiQueues.updateQueue(
        token,
        queueDetails: queueDetails,
      ),
    );
  }

  static Future<void> shakeUser({
    required int id,
  }) async {
    final String token = await ApiBaseService.getToken();

    await HandledResponse.query(
      () async => await ApiQueues.shakeUser(
        token,
        id: id,
      ),
    );
  }

  static Future<PincodeModel?> inviteUser({
    required int id,
  }) async {
    final String token = await ApiBaseService.getToken();

    var query = await HandledResponse.query(
      () async => await ApiQueues.inviteUser(
        token,
        id: id,
      ),
    );

    return query.fold((l) => null, (r) {
      return PincodeModel.fromJson(r.data);
    });
  }

  static Future<bool> joinQueue({
    String? pincode,
    String? qrcode,
  }) async {
    final String token = await ApiBaseService.getToken();

    final data = (await ApiQueues.joinQueue(
      token,
      pincode: pincode,
      qrcode: qrcode,
    ));

    return data.statusCode! / 100 == 2;
  }
}
