part of 'tasks_list_bloc.dart';

@freezed
class TasksListEvent with _$TasksListEvent {
  const factory TasksListEvent.initTasks(List<TaskTile> tasks) = _InitTasks;

  const factory TasksListEvent.setTaskDone(TaskTile task) = _SetTaskDone;

  const factory TasksListEvent.skipTask(TaskTile task) = _SkipTask;

  const factory TasksListEvent.addToWaitingList(TaskTile task) =
      _AddToWaitingList;

  const factory TasksListEvent.removeFromWaitingList(TaskTile task) =
      _RemoveFromWaitingList;

  const factory TasksListEvent.emptyWaitingList(TaskTile task,
      {@Default(false) bool pass}) = _EmptyWaitingList;

  const factory TasksListEvent.expandTask(TaskTile task) = _ExpandTask;

  const factory TasksListEvent.shrinkTask() = _ShrinkTask;

  const factory TasksListEvent.addToSelectedList(TaskTile task) =
      _AddToSelectedList;

  const factory TasksListEvent.removeFromSelectedList(TaskTile task) =
      _RemoveFromSelectedList;

  const factory TasksListEvent.emptySelectedList(TaskTile task,
      {@Default(false) bool pass}) = _EmptySelectedList;

  const factory TasksListEvent.unselect() = _Unselect;
}
