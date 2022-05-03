part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;

  const factory NotificationsState.dataLoaded(
    List<NotificationModel> readNotifications,
    List<NotificationModel> allNotifications,
  ) = _DataLoaded;
}
