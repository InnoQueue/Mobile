import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../tasks.dart';

part 'tasks_list_bloc.freezed.dart';
part 'tasks_list_event.dart';
part 'tasks_list_state.dart';

@Injectable()
class TasksListBloc extends Bloc<TasksListEvent, TasksListState> {
  late List<TaskTile> _tasks;
  TaskTile? _expanded;
  TaskTile? _done;
  TaskTile? _skipped;
  List<TaskTile> _waitingList = [];
  List<TaskTile> _selectedList = [];
  bool timeOut = false;
  bool emptyingSelectedList = false;

  TasksListBloc() : super(const _Initial()) {
    on<_InitTasks>(_initTasks);
    on<_ExpandTask>(_expandTask);
    on<_ShrinkTask>(_shrinkTask);
    on<_SetTaskDone>(_setTaskDone);
    on<_SkipTask>(_skipTask);
    on<_AddToWaitingList>(_addToWaitingList);
    on<_RemoveFromWaitingList>(_removeFromWaitingList);
    on<_EmptyWaitingList>(_emptyWaitingList);
    on<_AddToSelectedList>(_addToSelectedList);
    on<_RemoveFromSelectedList>(_removeFromSelectedList);
    on<_EmptySelectedList>(_emptySelectedList);
    on<_Unselect>(_unselect);
  }

  void _initTasks(
    _InitTasks event,
    Emitter<TasksListState> emit,
  ) async {
    _tasks = event.tasks;
    _waitingList = [];
    emit(TasksListState.dataManaged(_tasks, _expanded, _done, _skipped,
        timeOut ? _waitingList : [], [], emptyingSelectedList));
  }

  void _setTaskDone(
    _SetTaskDone event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _tasks.remove(event.task);
    _waitingList.remove(event.task);
    _done = event.task;
    emitDataManged(emit);
  }

  void _skipTask(
    _SkipTask event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _tasks.remove(event.task);
    _waitingList.remove(event.task);
    _skipped = event.task;
    emitDataManged(emit);
  }

  void _addToWaitingList(
    _AddToWaitingList event,
    Emitter<TasksListState> emit,
  ) async {
    _waitingList.add(event.task);
    List<TaskTile> _tempWaitingList = [..._waitingList];
    await Future.delayed(const Duration(seconds: 1));
    checkListForEquality(_tempWaitingList, emit);
  }

  void _addToSelectedList(
    _AddToSelectedList event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _selectedList.add(event.task);
    _expanded = null;
    emitDataManged(emit);
  }

  void _unselect(
    _Unselect event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _selectedList = [];
    emitDataManged(emit);
  }

  void _removeFromSelectedList(
    _RemoveFromSelectedList event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _selectedList.remove(event.task);
    emitDataManged(emit);
  }

  void _removeFromWaitingList(
    _RemoveFromWaitingList event,
    Emitter<TasksListState> emit,
  ) async {
    _waitingList.remove(event.task);
    List<TaskTile> _tempWaitingList = [..._waitingList];
    await Future.delayed(const Duration(seconds: 1));
    checkListForEquality(_tempWaitingList, emit);
  }

  void _emptyWaitingList(
    _EmptyWaitingList event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _waitingList.remove(event.task);
    if (!event.pass) {
      _tasks.remove(event.task);
    }
    emit(TasksListState.dataManaged(_tasks, _expanded, _done, _skipped,
        _waitingList, _selectedList, emptyingSelectedList));
  }

  void _emptySelectedList(
    _EmptySelectedList event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _selectedList.remove(event.task);
    if (!event.pass) {
      _tasks.remove(event.task);
    }
    if (_selectedList.isNotEmpty) {
      emptyingSelectedList = true;
    } else {
      emptyingSelectedList = false;
    }
    emit(TasksListState.dataManaged(_tasks, _expanded, _done, _skipped,
        _waitingList, _selectedList, emptyingSelectedList));
  }

  void _expandTask(
    _ExpandTask event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _expanded = event.task;
    emitDataManged(emit);
  }

  void _shrinkTask(
    _ShrinkTask event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _expanded = null;
    emitDataManged(emit);
  }

  void emitDataManged(Emitter<TasksListState> emit) {
    emit(TasksListState.dataManaged(_tasks, _expanded, _done, _skipped,
        timeOut ? _waitingList : [], _selectedList, emptyingSelectedList));
    _done = null;
    _skipped = null;
    timeOut = false;
  }

  void checkListForEquality(
    List<TaskTile> tempWaitingList,
    Emitter<TasksListState> emit,
  ) {
    if (tempWaitingList.length == _waitingList.length) {
      for (int i = 0; i < tempWaitingList.length; i++) {
        if (tempWaitingList[i] != _waitingList[i]) {
          return;
        }
      }
      _waitingList = tempWaitingList;
      timeOut = true;
      emit(const TasksListState.initial());
      emitDataManged(emit);
    }
  }
}
