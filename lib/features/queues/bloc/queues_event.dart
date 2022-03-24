part of 'queues_bloc.dart';

@freezed
class QueuesEvent with _$QueuesEvent {
  const factory QueuesEvent.loadRequested() = _LoadRequested;

  const factory QueuesEvent.addQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  }) = _AddQueue;
}
