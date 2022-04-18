import 'package:analyzer_plugin/utilities/pair.dart';
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
      emit(QueueDetailsState.queueOpened(currentQueue, false));
    });

    on<_LeaveQueue>(_leaveRequested);
    on<_FreezeQueue>(_freezeRequested);
    on<_UnfreezeQueue>(_unfreezeRequested);
    on<_EditQueue>(_editQueue);
    on<_SubmitEdits>(_submitEdits);
    on<_CancelEdits>(_cancelEdits);
    on<_UpdateQueue>(_updateQueue);
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

  void _freezeRequested(
    _FreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToFreeze = currentQueue;
    await ApiQueuesService.freezeQueue(
      queue: queueToFreeze,
    );
    emit(const QueueDetailsState.queueFreezed());
  }

  void _unfreezeRequested(
    _UnfreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToUnfreeze = currentQueue;
    await ApiQueuesService.unfreezeQueue(
      queue: queueToUnfreeze,
    );
    emit(const QueueDetailsState.queueFreezed());
  }

  void _editQueue(
    _EditQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(QueueDetailsState.queueOpened(currentQueue, true));
  }

  void _submitEdits(
    _SubmitEdits event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(QueueDetailsState.queueUpdating());
    await ApiQueuesService.updateQueue(
      queue: event.updatedQueue,
    );
    await updateQueue(emit);
  }

  void _cancelEdits(
    _CancelEdits event,
    Emitter<QueueDetailsState> emit,
  ) {
    emit(QueueDetailsState.queueOpened(currentQueue, false));
  }

  void _updateQueue(
    _UpdateQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    await updateQueue(emit);
  }

  Future<void> updateQueue(Emitter<QueueDetailsState> emit) async {
    emit(QueueDetailsState.queueUpdating());
    Pair<List<QueueModel>, List<QueueModel>> queues =
        await ApiQueuesService.getQueues();

    List<QueueModel> allQueues = queues.first..addAll(queues.last);
    QueueModel updatedQueue =
        allQueues.firstWhere((element) => element.id == currentQueue.id);
    currentQueue = updatedQueue;
    emit(QueueDetailsState.queueOpened(updatedQueue, false));
  }
}
