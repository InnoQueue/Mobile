import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inno_queue/helpers/try_connect.dart';

import 'api_base.dart';

class ApiSettings extends ApiBase {
  static Future<Response> getSettings(token) async {
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/settings",
      options: Options(headers: {"user-token": token}),
    );
  }

  static Future<Response> patchSettings(token, body) async {
    return ApiBase.dio.patch(
      "${ApiBase.baseUrl}/settings",
      options: Options(headers: {"user-token": token}),
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
    final data = (await ApiSettings.patchSettings(token, body)).data;
    if (kDebugMode) {
      print("response data: $data");
    }
  }

  static Future<Map<String, dynamic>?> getFields() async {
    final String token = await ApiBaseService.getToken();

    var query = await HandledResponse.query(
        () async => await ApiSettings.getSettings(token));

    return query.fold((l) => null, (r) async {
      var queueBox = await Hive.openBox("settings");
      queueBox.deleteAll(queueBox.keys);
      queueBox.put("settings", jsonEncode(r.data));

      if (kDebugMode) {
        print('updated settings cache');
      }

      return r.data;
    });
  }
}
