// ignore_for_file: non_constant_identifier_names

part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsEvent with _$QueueDetailsEvent {
  const factory QueueDetailsEvent.leaveQueue() = _LeaveQueue;

  const factory QueueDetailsEvent.loadRequested(
      {required int id,
      required int hash_code,
      required bool checkCache}) = _LoadRequested;

  const factory QueueDetailsEvent.inviteUser() = _InviteUser;

  const factory QueueDetailsEvent.freezeQueue() = _FreezeQueue;

  const factory QueueDetailsEvent.unfreezeQueue() = _UnfreezeQueue;

  const factory QueueDetailsEvent.updateQueue() = _UpdateQueue;

  const factory QueueDetailsEvent.addProgress(double value) = _AddProgress;

  const factory QueueDetailsEvent.editQueue() = _EditQueue;

  const factory QueueDetailsEvent.cancelEdits() = _CancelEdits;

  const factory QueueDetailsEvent.submitEdits(
      QueueDetailsModel updatedQueueDetails) = _SubmitEdits;
}
