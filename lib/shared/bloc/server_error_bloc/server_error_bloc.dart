import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'server_error_bloc.freezed.dart';

@freezed
class ServerErrorState with _$ServerErrorState {
  const factory ServerErrorState.initial() = _Initial;

  const factory ServerErrorState.serverError() = _ServerErrorState;

  const factory ServerErrorState.internetConnectionError() =
      _InternetConnectionErrorState;

  const factory ServerErrorState.couldNotUpdate() = _CouldNotUpdateState;

  const factory ServerErrorState.connectionTimeout() = _ConnectionTimeoutState;
}

@freezed
class ServerErrorEvent with _$ServerErrorEvent {
  const factory ServerErrorEvent.initial() = _InitialEvent;

  const factory ServerErrorEvent.serverError() = _ServerErrorEvent;

  const factory ServerErrorEvent.internetConnectionError() =
      _InternetConnectionErrorEvent;

  const factory ServerErrorEvent.connectionTimeout() = _ConnectionTimeoutEvent;

  const factory ServerErrorEvent.couldNotUpdate() = _CouldNotUpdateEvent;
}

class ServerErrorBloc extends Bloc<ServerErrorEvent, ServerErrorState> {
  ServerErrorBloc() : super(const _Initial()) {
    on<_ServerErrorEvent>((event, emit) {
      emit(const _ServerErrorState());
    });
    on<_InternetConnectionErrorEvent>((event, emit) {
      emit(const _InternetConnectionErrorState());
    });
    on<_CouldNotUpdateEvent>((event, emit) {
      emit(const _CouldNotUpdateState());
    });
    on<_ConnectionTimeoutEvent>((event, emit) {
      emit(const _ConnectionTimeoutState());
    });
    on<_InitialEvent>((event, emit) {
      emit(const _Initial());
    });
  }
}
