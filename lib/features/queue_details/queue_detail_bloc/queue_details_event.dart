part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsEvent with _$QueueDetailsEvent {
  const factory QueueDetailsEvent.openQueue(QueueModel queue) = _OpenQueue;

  const factory QueueDetailsEvent.leaveQueue() = _LeaveQueue;

  const factory QueueDetailsEvent.inviteUser() = _InviteUser;

  const factory QueueDetailsEvent.freezeQueue() = _FreezeQueue;

  const factory QueueDetailsEvent.unfreezeQueue() = _UnfreezeQueue;

  const factory QueueDetailsEvent.updateQueue() = _UpdateQueue;

  const factory QueueDetailsEvent.addProgress(double value) = _AddProgress;

  const factory QueueDetailsEvent.editQueue() = _EditQueue;

  const factory QueueDetailsEvent.cancelEdits() = _CancelEdits;

  const factory QueueDetailsEvent.submitEdits(QueueModel updatedQueue) =
      _SubmitEdits;
}
