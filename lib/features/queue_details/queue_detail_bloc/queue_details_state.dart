part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsState with _$QueueDetailsState {
  const factory QueueDetailsState.initial() = _Initial;

  const factory QueueDetailsState.queueOpened(
      QueueDetailsModel queueDetails, bool editable) = _QueueOpened;

  const factory QueueDetailsState.queueLeft() = _QueueLeft;

  const factory QueueDetailsState.queueFreezed() = _QueueFreezed;

  const factory QueueDetailsState.queueUnfreezed() = _QueueUnfreezed;
}
