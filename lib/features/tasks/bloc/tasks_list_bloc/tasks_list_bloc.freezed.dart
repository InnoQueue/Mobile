// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TasksListEventTearOff {
  const _$TasksListEventTearOff();

  _InitTasks initTasks(List<TaskTile> tasks) {
    return _InitTasks(
      tasks,
    );
  }

  _SetTaskDone setTaskDone(TaskTile task) {
    return _SetTaskDone(
      task,
    );
  }

  _SkipTask skipTask(TaskTile task) {
    return _SkipTask(
      task,
    );
  }

  _AddToWaitingList addToWaitingList(TaskTile task) {
    return _AddToWaitingList(
      task,
    );
  }

  _RemoveFromWaitingList removeFromWaitingList(TaskTile task) {
    return _RemoveFromWaitingList(
      task,
    );
  }

  _EmptyWaitingList emptyWaitingList(TaskTile task) {
    return _EmptyWaitingList(
      task,
    );
  }

  _ExpandTask expandTask(TaskTile task) {
    return _ExpandTask(
      task,
    );
  }

  _ShrinkTask shrinkTask() {
    return const _ShrinkTask();
  }
}

/// @nodoc
const $TasksListEvent = _$TasksListEventTearOff();

/// @nodoc
mixin _$TasksListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksListEventCopyWith<$Res> {
  factory $TasksListEventCopyWith(
          TasksListEvent value, $Res Function(TasksListEvent) then) =
      _$TasksListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksListEventCopyWithImpl<$Res>
    implements $TasksListEventCopyWith<$Res> {
  _$TasksListEventCopyWithImpl(this._value, this._then);

  final TasksListEvent _value;
  // ignore: unused_field
  final $Res Function(TasksListEvent) _then;
}

/// @nodoc
abstract class _$InitTasksCopyWith<$Res> {
  factory _$InitTasksCopyWith(
          _InitTasks value, $Res Function(_InitTasks) then) =
      __$InitTasksCopyWithImpl<$Res>;
  $Res call({List<TaskTile> tasks});
}

/// @nodoc
class __$InitTasksCopyWithImpl<$Res> extends _$TasksListEventCopyWithImpl<$Res>
    implements _$InitTasksCopyWith<$Res> {
  __$InitTasksCopyWithImpl(_InitTasks _value, $Res Function(_InitTasks) _then)
      : super(_value, (v) => _then(v as _InitTasks));

  @override
  _InitTasks get _value => super._value as _InitTasks;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_InitTasks(
      tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskTile>,
    ));
  }
}

/// @nodoc

class _$_InitTasks implements _InitTasks {
  const _$_InitTasks(this.tasks);

  @override
  final List<TaskTile> tasks;

  @override
  String toString() {
    return 'TasksListEvent.initTasks(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitTasks &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$InitTasksCopyWith<_InitTasks> get copyWith =>
      __$InitTasksCopyWithImpl<_InitTasks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return initTasks(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return initTasks?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (initTasks != null) {
      return initTasks(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return initTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return initTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (initTasks != null) {
      return initTasks(this);
    }
    return orElse();
  }
}

abstract class _InitTasks implements TasksListEvent {
  const factory _InitTasks(List<TaskTile> tasks) = _$_InitTasks;

  List<TaskTile> get tasks;
  @JsonKey(ignore: true)
  _$InitTasksCopyWith<_InitTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetTaskDoneCopyWith<$Res> {
  factory _$SetTaskDoneCopyWith(
          _SetTaskDone value, $Res Function(_SetTaskDone) then) =
      __$SetTaskDoneCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$SetTaskDoneCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res>
    implements _$SetTaskDoneCopyWith<$Res> {
  __$SetTaskDoneCopyWithImpl(
      _SetTaskDone _value, $Res Function(_SetTaskDone) _then)
      : super(_value, (v) => _then(v as _SetTaskDone));

  @override
  _SetTaskDone get _value => super._value as _SetTaskDone;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_SetTaskDone(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_SetTaskDone implements _SetTaskDone {
  const _$_SetTaskDone(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.setTaskDone(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetTaskDone &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$SetTaskDoneCopyWith<_SetTaskDone> get copyWith =>
      __$SetTaskDoneCopyWithImpl<_SetTaskDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return setTaskDone(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return setTaskDone?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (setTaskDone != null) {
      return setTaskDone(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return setTaskDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return setTaskDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (setTaskDone != null) {
      return setTaskDone(this);
    }
    return orElse();
  }
}

abstract class _SetTaskDone implements TasksListEvent {
  const factory _SetTaskDone(TaskTile task) = _$_SetTaskDone;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$SetTaskDoneCopyWith<_SetTaskDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SkipTaskCopyWith<$Res> {
  factory _$SkipTaskCopyWith(_SkipTask value, $Res Function(_SkipTask) then) =
      __$SkipTaskCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$SkipTaskCopyWithImpl<$Res> extends _$TasksListEventCopyWithImpl<$Res>
    implements _$SkipTaskCopyWith<$Res> {
  __$SkipTaskCopyWithImpl(_SkipTask _value, $Res Function(_SkipTask) _then)
      : super(_value, (v) => _then(v as _SkipTask));

  @override
  _SkipTask get _value => super._value as _SkipTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_SkipTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_SkipTask implements _SkipTask {
  const _$_SkipTask(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.skipTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkipTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$SkipTaskCopyWith<_SkipTask> get copyWith =>
      __$SkipTaskCopyWithImpl<_SkipTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return skipTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return skipTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (skipTask != null) {
      return skipTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return skipTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return skipTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (skipTask != null) {
      return skipTask(this);
    }
    return orElse();
  }
}

abstract class _SkipTask implements TasksListEvent {
  const factory _SkipTask(TaskTile task) = _$_SkipTask;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$SkipTaskCopyWith<_SkipTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddToWaitingListCopyWith<$Res> {
  factory _$AddToWaitingListCopyWith(
          _AddToWaitingList value, $Res Function(_AddToWaitingList) then) =
      __$AddToWaitingListCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$AddToWaitingListCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res>
    implements _$AddToWaitingListCopyWith<$Res> {
  __$AddToWaitingListCopyWithImpl(
      _AddToWaitingList _value, $Res Function(_AddToWaitingList) _then)
      : super(_value, (v) => _then(v as _AddToWaitingList));

  @override
  _AddToWaitingList get _value => super._value as _AddToWaitingList;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_AddToWaitingList(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_AddToWaitingList implements _AddToWaitingList {
  const _$_AddToWaitingList(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.addToWaitingList(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToWaitingList &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$AddToWaitingListCopyWith<_AddToWaitingList> get copyWith =>
      __$AddToWaitingListCopyWithImpl<_AddToWaitingList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return addToWaitingList(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return addToWaitingList?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (addToWaitingList != null) {
      return addToWaitingList(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return addToWaitingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return addToWaitingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (addToWaitingList != null) {
      return addToWaitingList(this);
    }
    return orElse();
  }
}

abstract class _AddToWaitingList implements TasksListEvent {
  const factory _AddToWaitingList(TaskTile task) = _$_AddToWaitingList;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$AddToWaitingListCopyWith<_AddToWaitingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveFromWaitingListCopyWith<$Res> {
  factory _$RemoveFromWaitingListCopyWith(_RemoveFromWaitingList value,
          $Res Function(_RemoveFromWaitingList) then) =
      __$RemoveFromWaitingListCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$RemoveFromWaitingListCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res>
    implements _$RemoveFromWaitingListCopyWith<$Res> {
  __$RemoveFromWaitingListCopyWithImpl(_RemoveFromWaitingList _value,
      $Res Function(_RemoveFromWaitingList) _then)
      : super(_value, (v) => _then(v as _RemoveFromWaitingList));

  @override
  _RemoveFromWaitingList get _value => super._value as _RemoveFromWaitingList;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_RemoveFromWaitingList(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_RemoveFromWaitingList implements _RemoveFromWaitingList {
  const _$_RemoveFromWaitingList(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.removeFromWaitingList(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveFromWaitingList &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$RemoveFromWaitingListCopyWith<_RemoveFromWaitingList> get copyWith =>
      __$RemoveFromWaitingListCopyWithImpl<_RemoveFromWaitingList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return removeFromWaitingList(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return removeFromWaitingList?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (removeFromWaitingList != null) {
      return removeFromWaitingList(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return removeFromWaitingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return removeFromWaitingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (removeFromWaitingList != null) {
      return removeFromWaitingList(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromWaitingList implements TasksListEvent {
  const factory _RemoveFromWaitingList(TaskTile task) =
      _$_RemoveFromWaitingList;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$RemoveFromWaitingListCopyWith<_RemoveFromWaitingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyWaitingListCopyWith<$Res> {
  factory _$EmptyWaitingListCopyWith(
          _EmptyWaitingList value, $Res Function(_EmptyWaitingList) then) =
      __$EmptyWaitingListCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$EmptyWaitingListCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res>
    implements _$EmptyWaitingListCopyWith<$Res> {
  __$EmptyWaitingListCopyWithImpl(
      _EmptyWaitingList _value, $Res Function(_EmptyWaitingList) _then)
      : super(_value, (v) => _then(v as _EmptyWaitingList));

  @override
  _EmptyWaitingList get _value => super._value as _EmptyWaitingList;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_EmptyWaitingList(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_EmptyWaitingList implements _EmptyWaitingList {
  const _$_EmptyWaitingList(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.emptyWaitingList(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmptyWaitingList &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$EmptyWaitingListCopyWith<_EmptyWaitingList> get copyWith =>
      __$EmptyWaitingListCopyWithImpl<_EmptyWaitingList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return emptyWaitingList(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return emptyWaitingList?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (emptyWaitingList != null) {
      return emptyWaitingList(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return emptyWaitingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return emptyWaitingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (emptyWaitingList != null) {
      return emptyWaitingList(this);
    }
    return orElse();
  }
}

abstract class _EmptyWaitingList implements TasksListEvent {
  const factory _EmptyWaitingList(TaskTile task) = _$_EmptyWaitingList;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$EmptyWaitingListCopyWith<_EmptyWaitingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExpandTaskCopyWith<$Res> {
  factory _$ExpandTaskCopyWith(
          _ExpandTask value, $Res Function(_ExpandTask) then) =
      __$ExpandTaskCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$ExpandTaskCopyWithImpl<$Res> extends _$TasksListEventCopyWithImpl<$Res>
    implements _$ExpandTaskCopyWith<$Res> {
  __$ExpandTaskCopyWithImpl(
      _ExpandTask _value, $Res Function(_ExpandTask) _then)
      : super(_value, (v) => _then(v as _ExpandTask));

  @override
  _ExpandTask get _value => super._value as _ExpandTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_ExpandTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_ExpandTask implements _ExpandTask {
  const _$_ExpandTask(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.expandTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpandTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$ExpandTaskCopyWith<_ExpandTask> get copyWith =>
      __$ExpandTaskCopyWithImpl<_ExpandTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return expandTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return expandTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (expandTask != null) {
      return expandTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return expandTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return expandTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (expandTask != null) {
      return expandTask(this);
    }
    return orElse();
  }
}

abstract class _ExpandTask implements TasksListEvent {
  const factory _ExpandTask(TaskTile task) = _$_ExpandTask;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$ExpandTaskCopyWith<_ExpandTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShrinkTaskCopyWith<$Res> {
  factory _$ShrinkTaskCopyWith(
          _ShrinkTask value, $Res Function(_ShrinkTask) then) =
      __$ShrinkTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShrinkTaskCopyWithImpl<$Res> extends _$TasksListEventCopyWithImpl<$Res>
    implements _$ShrinkTaskCopyWith<$Res> {
  __$ShrinkTaskCopyWithImpl(
      _ShrinkTask _value, $Res Function(_ShrinkTask) _then)
      : super(_value, (v) => _then(v as _ShrinkTask));

  @override
  _ShrinkTask get _value => super._value as _ShrinkTask;
}

/// @nodoc

class _$_ShrinkTask implements _ShrinkTask {
  const _$_ShrinkTask();

  @override
  String toString() {
    return 'TasksListEvent.shrinkTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShrinkTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) setTaskDone,
    required TResult Function(TaskTile task) skipTask,
    required TResult Function(TaskTile task) addToWaitingList,
    required TResult Function(TaskTile task) removeFromWaitingList,
    required TResult Function(TaskTile task) emptyWaitingList,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return shrinkTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return shrinkTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? setTaskDone,
    TResult Function(TaskTile task)? skipTask,
    TResult Function(TaskTile task)? addToWaitingList,
    TResult Function(TaskTile task)? removeFromWaitingList,
    TResult Function(TaskTile task)? emptyWaitingList,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (shrinkTask != null) {
      return shrinkTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_SetTaskDone value) setTaskDone,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_AddToWaitingList value) addToWaitingList,
    required TResult Function(_RemoveFromWaitingList value)
        removeFromWaitingList,
    required TResult Function(_EmptyWaitingList value) emptyWaitingList,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return shrinkTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return shrinkTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_SetTaskDone value)? setTaskDone,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_AddToWaitingList value)? addToWaitingList,
    TResult Function(_RemoveFromWaitingList value)? removeFromWaitingList,
    TResult Function(_EmptyWaitingList value)? emptyWaitingList,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (shrinkTask != null) {
      return shrinkTask(this);
    }
    return orElse();
  }
}

abstract class _ShrinkTask implements TasksListEvent {
  const factory _ShrinkTask() = _$_ShrinkTask;
}

/// @nodoc
class _$TasksListStateTearOff {
  const _$TasksListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _DataManaged dataManaged(List<TaskTile> shownTasks, TaskTile? expandedTask,
      TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList) {
    return _DataManaged(
      shownTasks,
      expandedTask,
      done,
      sipped,
      waitingList,
    );
  }
}

/// @nodoc
const $TasksListState = _$TasksListStateTearOff();

/// @nodoc
mixin _$TasksListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)
        dataManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)?
        dataManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)?
        dataManaged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataManaged value) dataManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataManaged value)? dataManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataManaged value)? dataManaged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksListStateCopyWith<$Res> {
  factory $TasksListStateCopyWith(
          TasksListState value, $Res Function(TasksListState) then) =
      _$TasksListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksListStateCopyWithImpl<$Res>
    implements $TasksListStateCopyWith<$Res> {
  _$TasksListStateCopyWithImpl(this._value, this._then);

  final TasksListState _value;
  // ignore: unused_field
  final $Res Function(TasksListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TasksListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TasksListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)
        dataManaged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)?
        dataManaged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)?
        dataManaged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataManaged value) dataManaged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataManaged value)? dataManaged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataManaged value)? dataManaged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TasksListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DataManagedCopyWith<$Res> {
  factory _$DataManagedCopyWith(
          _DataManaged value, $Res Function(_DataManaged) then) =
      __$DataManagedCopyWithImpl<$Res>;
  $Res call(
      {List<TaskTile> shownTasks,
      TaskTile? expandedTask,
      TaskTile? done,
      TaskTile? sipped,
      List<TaskTile> waitingList});
}

/// @nodoc
class __$DataManagedCopyWithImpl<$Res>
    extends _$TasksListStateCopyWithImpl<$Res>
    implements _$DataManagedCopyWith<$Res> {
  __$DataManagedCopyWithImpl(
      _DataManaged _value, $Res Function(_DataManaged) _then)
      : super(_value, (v) => _then(v as _DataManaged));

  @override
  _DataManaged get _value => super._value as _DataManaged;

  @override
  $Res call({
    Object? shownTasks = freezed,
    Object? expandedTask = freezed,
    Object? done = freezed,
    Object? sipped = freezed,
    Object? waitingList = freezed,
  }) {
    return _then(_DataManaged(
      shownTasks == freezed
          ? _value.shownTasks
          : shownTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskTile>,
      expandedTask == freezed
          ? _value.expandedTask
          : expandedTask // ignore: cast_nullable_to_non_nullable
              as TaskTile?,
      done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as TaskTile?,
      sipped == freezed
          ? _value.sipped
          : sipped // ignore: cast_nullable_to_non_nullable
              as TaskTile?,
      waitingList == freezed
          ? _value.waitingList
          : waitingList // ignore: cast_nullable_to_non_nullable
              as List<TaskTile>,
    ));
  }
}

/// @nodoc

class _$_DataManaged implements _DataManaged {
  const _$_DataManaged(this.shownTasks, this.expandedTask, this.done,
      this.sipped, this.waitingList);

  @override
  final List<TaskTile> shownTasks;
  @override
  final TaskTile? expandedTask;
  @override
  final TaskTile? done;
  @override
  final TaskTile? sipped;
  @override
  final List<TaskTile> waitingList;

  @override
  String toString() {
    return 'TasksListState.dataManaged(shownTasks: $shownTasks, expandedTask: $expandedTask, done: $done, sipped: $sipped, waitingList: $waitingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataManaged &&
            const DeepCollectionEquality()
                .equals(other.shownTasks, shownTasks) &&
            const DeepCollectionEquality()
                .equals(other.expandedTask, expandedTask) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.sipped, sipped) &&
            const DeepCollectionEquality()
                .equals(other.waitingList, waitingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shownTasks),
      const DeepCollectionEquality().hash(expandedTask),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(sipped),
      const DeepCollectionEquality().hash(waitingList));

  @JsonKey(ignore: true)
  @override
  _$DataManagedCopyWith<_DataManaged> get copyWith =>
      __$DataManagedCopyWithImpl<_DataManaged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)
        dataManaged,
  }) {
    return dataManaged(shownTasks, expandedTask, done, sipped, waitingList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)?
        dataManaged,
  }) {
    return dataManaged?.call(
        shownTasks, expandedTask, done, sipped, waitingList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask,
            TaskTile? done, TaskTile? sipped, List<TaskTile> waitingList)?
        dataManaged,
    required TResult orElse(),
  }) {
    if (dataManaged != null) {
      return dataManaged(shownTasks, expandedTask, done, sipped, waitingList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataManaged value) dataManaged,
  }) {
    return dataManaged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataManaged value)? dataManaged,
  }) {
    return dataManaged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataManaged value)? dataManaged,
    required TResult orElse(),
  }) {
    if (dataManaged != null) {
      return dataManaged(this);
    }
    return orElse();
  }
}

abstract class _DataManaged implements TasksListState {
  const factory _DataManaged(
      List<TaskTile> shownTasks,
      TaskTile? expandedTask,
      TaskTile? done,
      TaskTile? sipped,
      List<TaskTile> waitingList) = _$_DataManaged;

  List<TaskTile> get shownTasks;
  TaskTile? get expandedTask;
  TaskTile? get done;
  TaskTile? get sipped;
  List<TaskTile> get waitingList;
  @JsonKey(ignore: true)
  _$DataManagedCopyWith<_DataManaged> get copyWith =>
      throw _privateConstructorUsedError;
}
