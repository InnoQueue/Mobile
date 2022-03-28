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

  TasksListBloc() : super(const _Initial()) {
    on<_InitTasks>(_initTasks);
    on<_HideTask>(_hideTask);
    on<_ExpandTask>(_expandTask);
    on<_ShrinkTask>(_shrinkTask);
  }

  void _initTasks(
    _InitTasks event,
    Emitter<TasksListState> emit,
  ) async {
    _tasks = event.tasks;
    emit(TasksListState.dataManaged(_tasks, _expanded));
  }

  void _hideTask(
    _HideTask event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _tasks.remove(event.task);
    emit(TasksListState.dataManaged(_tasks, _expanded));
  }

  void _expandTask(
    _ExpandTask event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _expanded = event.task;
    emit(TasksListState.dataManaged(_tasks, _expanded));
  }

  void _shrinkTask(
    _ShrinkTask event,
    Emitter<TasksListState> emit,
  ) async {
    emit(const TasksListState.initial());
    _expanded = null;
    emit(TasksListState.dataManaged(_tasks, _expanded));
  }
}
