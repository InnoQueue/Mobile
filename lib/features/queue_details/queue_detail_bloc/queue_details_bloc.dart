import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

part 'queue_details_bloc.freezed.dart';
part 'queue_details_event.dart';
part 'queue_details_state.dart';

@Injectable()
class QueueDetailsBloc extends Bloc<QueueDetailsEvent, QueueDetailsState> {
  late QueueModel currentQueue;

  QueueDetailsBloc() : super(const _Initial()) {
    on<_OpenQueue>((event, emit) {
      currentQueue = event.queue;
      emit(QueueDetailsState.queueOpened(currentQueue));
    });

    on<_LeaveQueue>(_leaveRequested);
    on<_FreezeQueue>(_freezeReqeusted);
  }

  void _leaveRequested(
    _LeaveQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToLeave = currentQueue;
    await ApiQueuesService.leaveQueue(
      queue: queueToLeave,
    );
    emit(const QueueDetailsState.queueLeft());
  }

  void _freezeReqeusted(
    _FreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToFreeze = currentQueue;
    await ApiQueuesService.freezeQueue(
      queue: queueToFreeze,
    );
    emit(const QueueDetailsState.queueFreezed());
  }
}
