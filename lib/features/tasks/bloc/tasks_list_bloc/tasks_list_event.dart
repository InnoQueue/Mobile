part of 'tasks_list_bloc.dart';

@freezed
class TasksListEvent with _$TasksListEvent {
  const factory TasksListEvent.initTasks(List<TaskTile> tasks) = _InitTasks;

  const factory TasksListEvent.hideTask(TaskTile task) = _HideTask;

  const factory TasksListEvent.expandTask(TaskTile task) = _ExpandTask;

  const factory TasksListEvent.shrinkTask() = _ShrinkTask;
}
