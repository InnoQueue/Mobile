part of 'tasks_list_bloc.dart';

@freezed
class TasksListEvent with _$TasksListEvent {
  const factory TasksListEvent.initTasks(List<TaskModel> tasks) = _InitTasks;

  const factory TasksListEvent.setTaskDone(TaskModel task, {double? expenses}) =
      _SetTaskDone;

  const factory TasksListEvent.skipTask(TaskModel task) = _SkipTask;

  const factory TasksListEvent.addToWaitingList(TaskModel task) =
      _AddToWaitingList;

  const factory TasksListEvent.removeFromWaitingList(TaskModel task) =
      _RemoveFromWaitingList;

  const factory TasksListEvent.emptyWaitingList(TaskModel task,
      {@Default(false) bool pass}) = _EmptyWaitingList;

  const factory TasksListEvent.expandTask(TaskModel task) = _ExpandTask;

  const factory TasksListEvent.shrinkTask() = _ShrinkTask;

  const factory TasksListEvent.addToSelectedList(TaskModel task) =
      _AddToSelectedList;

  const factory TasksListEvent.removeFromSelectedList(TaskModel task) =
      _RemoveFromSelectedList;

  const factory TasksListEvent.emptySelectedList(TaskModel task,
      {@Default(false) bool pass}) = _EmptySelectedList;

  const factory TasksListEvent.unselect() = _Unselect;
}
