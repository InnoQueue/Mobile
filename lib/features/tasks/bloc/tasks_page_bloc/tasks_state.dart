part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = _Initial;

  const factory TasksState.dataLoaded(
    List<TaskModel> tasks,
  ) = _DataLoaded;
}
