import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'select_tasks_bloc.freezed.dart';

@freezed
class SelectTasksState with _$SelectTasksState {
  const factory SelectTasksState.initial() = _Initial;

  const factory SelectTasksState.selected(int number) = _Selected;

  const factory SelectTasksState.unselected() = _Unselected;

  const factory SelectTasksState.cleared() = _Cleared;

  const factory SelectTasksState.allSkipped() = _AllSkipped;

  const factory SelectTasksState.allDone() = _AllDone;
}

@freezed
class SelectTasksEvent with _$SelectTasksEvent {
  const factory SelectTasksEvent.select(int number) = _Select;

  const factory SelectTasksEvent.unselect() = _Unselect;

  const factory SelectTasksEvent.clear() = _Clear;

  const factory SelectTasksEvent.skipAll() = _SkipAll;

  const factory SelectTasksEvent.setAllDone() = _SetAllDone;
}

@Injectable()
class SelectTasksBloc extends Bloc<SelectTasksEvent, SelectTasksState> {
  SelectTasksBloc() : super(const _Initial()) {
    on<_Select>((event, emit) {
      emit(_Selected(event.number));
    });
    on<_Unselect>((event, emit) {
      emit(const _Unselected());
    });
    on<_Clear>((event, emit) => emit(const _Cleared()));
    on<_SetAllDone>((event, emit) => emit(const _AllDone()));
    on<_SkipAll>((event, emit) => emit(const _AllSkipped()));
  }
}
