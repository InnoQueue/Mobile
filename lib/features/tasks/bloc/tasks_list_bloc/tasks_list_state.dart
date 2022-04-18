part of 'tasks_list_bloc.dart';

@freezed
class TasksListState with _$TasksListState {
  const factory TasksListState.initial() = _Initial;

  const factory TasksListState.dataManaged(
    List<TaskModel> shownTasks,
    TaskModel? expandedTask,
    TaskModel? done,
    double? expenses,
    TaskModel? sipped,
    List<TaskModel> waitingList,
    List<TaskModel> selectedList,
    bool emptyingSelectedList,
    bool emptyingWaitingList,
  ) = _DataManaged;
}
