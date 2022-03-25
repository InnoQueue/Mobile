// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:inno_queue/core/api/api_base.dart' as _i3;
import 'package:inno_queue/core/api/api_notifications.dart' as _i4;
import 'package:inno_queue/core/api/api_queues.dart' as _i5;
import 'package:inno_queue/core/api/api_tasks.dart' as _i6;
import 'package:inno_queue/features/queue_details/queue_detail_bloc/queue_details_bloc.dart'
    as _i8;
import 'package:inno_queue/features/queues/bloc/queues_bloc.dart' as _i9;
import 'package:inno_queue/features/tasks/bloc/tasks_bloc.dart' as _i10;
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ApiBase>(() => _i3.ApiBase());
  gh.factory<_i4.ApiNotifications>(() => _i4.ApiNotifications());
  gh.factory<_i5.ApiQueues>(() => _i5.ApiQueues());
  gh.factory<_i6.ApiTasks>(() => _i6.ApiTasks());
  gh.factory<_i7.AppBarBloc>(() => _i7.AppBarBloc(get<String>()));
  gh.factory<_i8.QueueDetailsBloc>(() => _i8.QueueDetailsBloc());
  gh.factory<_i9.QueuesBloc>(() => _i9.QueuesBloc());
  gh.factory<_i10.TasksBloc>(() => _i10.TasksBloc());
  return get;
}
