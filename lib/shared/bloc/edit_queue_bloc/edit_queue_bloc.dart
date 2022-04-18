import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_queue/features/features.dart';
part 'edit_queue_bloc.freezed.dart';

@freezed
class EditQueueState with _$EditQueueState {
  const factory EditQueueState.initial() = _Initial;

  const factory EditQueueState.updateRequested() = _UpdateRequested;

  const factory EditQueueState.cancelRequested() = _CancelRequested;
}

@freezed
class EditQueueEvent with _$EditQueueEvent {
  const factory EditQueueEvent.reset() = _Reset;

  const factory EditQueueEvent.requestUpdate() = _Update;

  const factory EditQueueEvent.requestCancel() = _Cancel;
}

@Injectable()
class EditQueueBloc extends Bloc<EditQueueEvent, EditQueueState> {
  EditQueueBloc() : super(const _Initial()) {
    on<_Update>((event, emit) {
      emit(const _UpdateRequested());
    });
    on<_Cancel>((event, emit) {
      emit(const _CancelRequested());
    });
    on<_Reset>((event, emit) {
      emit(const _Initial());
    });
  }
}
