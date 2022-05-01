import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/core/api/api_tasks.dart';

import '../../features.dart';

part 'queue_details_bloc.freezed.dart';
part 'queue_details_event.dart';
part 'queue_details_state.dart';

@Injectable()
class QueueDetailsBloc extends Bloc<QueueDetailsEvent, QueueDetailsState> {
  late QueueDetailsModel currentQueueDetails;

  QueueDetailsBloc() : super(const _Initial()) {
    on<_LeaveQueue>(_leaveRequested);
    on<_FreezeQueue>(_freezeRequested);
    on<_UnfreezeQueue>(_unfreezeRequested);
    on<_EditQueue>(_editQueue);
    on<_SubmitEdits>(_submitEdits);
    on<_CancelEdits>(_cancelEdits);
    on<_UpdateQueue>(_updateQueue);
    on<_AddProgress>(_addProgress);
    on<_LoadRequested>(_loadRequested);
  }

  void _loadRequested(
    _LoadRequested event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(const QueueDetailsState.initial());
    currentQueueDetails = await ApiQueuesService.getQueue(
      id: event.id,
      hash: event.hash_code,
      checkCache: event.checkCache,
    );
    emit(QueueDetailsState.queueOpened(currentQueueDetails, false));
  }

  void _leaveRequested(
    _LeaveQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToLeave = currentQueueDetails;
    await ApiQueuesService.leaveQueue(
      id: queueToLeave.id,
    );
    emit(const QueueDetailsState.queueLeft());
  }

  void _freezeRequested(
    _FreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToFreeze = currentQueueDetails;
    await ApiQueuesService.freezeQueue(
      id: queueToFreeze.id,
    );
    emit(const QueueDetailsState.queueFreezed());
  }

  void _unfreezeRequested(
    _UnfreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queueToUnfreeze = currentQueueDetails;
    await ApiQueuesService.unfreezeQueue(
      id: queueToUnfreeze.id,
    );
    emit(const QueueDetailsState.queueFreezed());
  }

  void _editQueue(
    _EditQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(QueueDetailsState.queueOpened(currentQueueDetails, true));
  }

  void _submitEdits(
    _SubmitEdits event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(const QueueDetailsState.queueUpdating());
    await ApiQueuesService.updateQueue(
      queueDetails: event.updatedQueueDetails,
    );
    await updateQueue(emit);
  }

  void _cancelEdits(
    _CancelEdits event,
    Emitter<QueueDetailsState> emit,
  ) {
    emit(QueueDetailsState.queueOpened(currentQueueDetails, false));
  }

  void _updateQueue(
    _UpdateQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    await updateQueue(emit);
  }

  void _addProgress(
    _AddProgress event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(const QueueDetailsState.queueUpdating());
    await ApiTasksService.deleteTask(
      taskId: currentQueueDetails.id,
      expenses: event.value,
    );
    await updateQueue(emit);
  }

  Future<void> updateQueue(Emitter<QueueDetailsState> emit) async {
    emit(const QueueDetailsState.queueUpdating());
    QueueDetailsModel updatedQueueDetails = await ApiQueuesService.getQueue(
      id: currentQueueDetails.id,
      hash: null,
      checkCache: false,
    );
    currentQueueDetails = updatedQueueDetails;
    emit(QueueDetailsState.queueOpened(updatedQueueDetails, false));
  }
}
