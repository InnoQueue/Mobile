part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsState with _$QueueDetailsState {
  const factory QueueDetailsState.initial() = _Initial;

  const factory QueueDetailsState.queueOpened(QueueModel queue, bool editable) =
      _QueueOpened;

  const factory QueueDetailsState.queueLeft() = _QueueLeft;

  const factory QueueDetailsState.queueUpdating() = _QueueUpdating;

  const factory QueueDetailsState.queueFreezed() = _QueueFreezed;

  const factory QueueDetailsState.queueUnfreezed() = _QueueUnfreezed;
}
