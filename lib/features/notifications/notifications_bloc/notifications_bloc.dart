import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/api/api_notifications.dart';
import 'package:inno_queue/features/notifications/model/notification_model.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

@Injectable()
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  Pair<List<NotificationModel>, List<NotificationModel>>? cachedNotifications;
  bool loading = false;

  NotificationsBloc() : super(const _Initial()) {
    on<_LoadRequested>(_loadRequested);
  }

  void _loadRequested(
    _LoadRequested event,
    Emitter<NotificationsState> emit,
  ) async {
    loading = true;
    if (cachedNotifications == null) {
      emit(const _Initial());
    } else {
      emit(NotificationsState.dataLoaded(
          cachedNotifications!.first, cachedNotifications!.last));
    }
    NotificationsState? state = await _loadData();
    if (state != null) {
      emit(state);
    }
    loading = false;
  }

  Future<NotificationsState?> _loadData() async {
    var notifications = await ApiNotificationsService.getNotifications();
    if (notifications != null) {
      cachedNotifications = notifications;
      return NotificationsState.dataLoaded(
          notifications.first, notifications.last);
    }
  }
}
