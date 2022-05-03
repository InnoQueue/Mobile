import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/queues/model/queue_model.dart';

part 'queues_bloc.freezed.dart';
part 'queues_event.dart';
part 'queues_state.dart';

@Injectable()
class QueuesBloc extends Bloc<QueuesEvent, QueuesState> {
  Pair<List<QueueModel>, List<QueueModel>>? cachedQueues;
  bool loading = false;

  QueuesBloc() : super(const _Initial()) {
    on<_LoadRequested>(_loadRequested);
    on<_AddQueue>(_addQueue);
  }

  void _loadRequested(
    _LoadRequested event,
    Emitter<QueuesState> emit,
  ) async {
    loading = true;
    if (cachedQueues == null) {
      emit(const _Initial());
    } else {
      emit(QueuesState.dataLoaded(cachedQueues!.first, cachedQueues!.last));
    }
    emit(await _loadData());
    loading = false;
  }

  Future<QueuesState> _loadData() async {
    Pair<List<QueueModel>, List<QueueModel>> queues =
        await ApiQueuesService.getQueues();
    cachedQueues = queues;
    return QueuesState.dataLoaded(queues.first, queues.last);
  }

  void _addQueue(
    _AddQueue event,
    Emitter<QueuesState> emit,
  ) async {
    if (cachedQueues == null) {
      emit(const _Initial());
    } else {
      emit(QueuesState.dataLoaded(cachedQueues!.first, cachedQueues!.last));
    }
    await ApiQueuesService.addQueue(
      name: event.name,
      color: event.color,
      trackExpenses: event.trackExpenses,
    );
    emit(await _loadData());
  }
}
