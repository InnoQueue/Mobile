part of 'queues_bloc.dart';

@freezed
class QueuesEvent with _$QueuesEvent {
  const factory QueuesEvent.loadRequested() = _LoadRequested;
}
