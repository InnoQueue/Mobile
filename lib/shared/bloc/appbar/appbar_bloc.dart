import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:inno_queue/routes/app_router.dart';

abstract class RouteEvent {}

class RouteChangedEvent extends RouteEvent {
  final String newRoute;
  RouteChangedEvent(this.newRoute);
}

@Injectable()
class AppBarBloc extends Bloc<RouteEvent, String> {
  AppBarBloc(String initialState) : super(TasksRoute.name) {
    on<RouteChangedEvent>((event, emit) => emit(event.newRoute));
  }
}
