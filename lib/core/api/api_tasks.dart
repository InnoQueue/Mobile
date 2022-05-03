import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';

import 'api_base.dart';

@Injectable()
class ApiTasks extends ApiBase {
  static Future<Response> getTasks(token) async {
    return ApiBase.dio.get(
      "${ApiBase.baseUrl}/tasks",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
    );
  }

  static Future<Response> deleteTask(
    token, {
    required int id,
    double? expenses,
  }) async {
    var params = {
      "task_id": id,
      "expenses": expenses,
    };

    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/tasks/done",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
      data: jsonEncode(params),
    );
  }

  static Future<Response> skipTask(
    token, {
    required TaskModel task,
  }) async {
    var params = {
      "task_id": task.id,
      "expenses": null,
    };
    return ApiBase.dio.post(
      "${ApiBase.baseUrl}/tasks/skip",
      options: Options(
        headers: {
          "user-token": token,
        },
      ),
      data: jsonEncode(params),
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

  static Future<void> deleteTask({
    required int taskId,
    double? expenses,
  }) async {
    final String token = await ApiBaseService.getToken();
    var response = await ApiTasks.deleteTask(
      token,
      id: taskId,
      expenses: expenses,
    );
  }

  static Future<void> skipTask({
    required TaskModel task,
  }) async {
    final String token = await ApiBaseService.getToken();
    var response = await ApiTasks.skipTask(
      token,
      task: task,
    );
  }
}
