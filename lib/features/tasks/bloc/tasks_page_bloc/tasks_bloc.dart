import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/api/api_tasks.dart';

import 'package:inno_queue/features/tasks/model/task_model.dart';
part 'tasks_bloc.freezed.dart';
part 'tasks_event.dart';
part 'tasks_state.dart';

@Injectable()
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  List<TaskModel>? cachedTasks;
  bool loading = false;
  TasksBloc() : super(const _Initial()) {
    on<_LoadRequested>(_loadRequested);
  }

  void _loadRequested(
    _LoadRequested event,
    Emitter<TasksState> emit,
  ) async {
    loading = true;
    if (cachedTasks == null) {
      emit(const TasksState.initial());
    } else {
      emit(TasksState.dataLoaded(cachedTasks!));
    }
    TasksState? state = await _loadData();
    if (state != null) {
      emit(state);
    }
    loading = false;
  }

  Future<TasksState?> _loadData() async {
    List<TaskModel>? tasks = await ApiTasksService.getTasks();
    if (tasks != null) {
      cachedTasks = tasks;
      return TasksState.dataLoaded(tasks);
    }
    return null;
  }
}
