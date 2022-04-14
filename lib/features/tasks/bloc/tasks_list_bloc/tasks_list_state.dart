part of 'tasks_list_bloc.dart';

@freezed
class TasksListState with _$TasksListState {
  const factory TasksListState.initial() = _Initial;

  const factory TasksListState.dataManaged(
    List<TaskTile> shownTasks,
    TaskTile? expandedTask,
    TaskTile? done,
    TaskTile? sipped,
    List<TaskTile> waitingList,
    List<TaskTile> selectedList,
    bool emptyingSelectedList,
    bool emptyingWaitingList,
  ) = _DataManaged;
}
