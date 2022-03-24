import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import 'package:inno_queue/routes/app_router.dart';

import 'api_base.dart';

class ApiTasks extends ApiBase {
  static Future<Response> getTasks(token) async {
    print("token $token");
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/tasks",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }
}

class ApiTasksService {
  static Future<List<TaskModel>> getTasks() async {
    final String token = await ApiBaseService.getToken();
    final response = await ApiTasks.getTasks(token);
    List<TaskModel> tasks = [];
    for (int i = 0; i < response.data.length; i++) {
      tasks.add(TaskModel.fromJson(response.data[i]));
    }
    return tasks;
  }
}