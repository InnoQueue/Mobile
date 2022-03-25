part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsEvent with _$QueueDetailsEvent {
  const factory QueueDetailsEvent.openQueue(QueueModel queue) = _OpenQueue;

  const factory QueueDetailsEvent.leaveQueue() = _LeaveQueue;

  const factory QueueDetailsEvent.inviteUser() = _InviteUser;

  const factory QueueDetailsEvent.freezeQueue() = _FreezeQueue;
}
