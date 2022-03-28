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

  _HideTask hideTask(TaskTile task) {
    return _HideTask(
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
    required TResult Function(TaskTile task) hideTask,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_HideTask value) hideTask,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
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
    required TResult Function(TaskTile task) hideTask,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return initTasks(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return initTasks?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
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
    required TResult Function(_HideTask value) hideTask,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return initTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return initTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
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
abstract class _$HideTaskCopyWith<$Res> {
  factory _$HideTaskCopyWith(_HideTask value, $Res Function(_HideTask) then) =
      __$HideTaskCopyWithImpl<$Res>;
  $Res call({TaskTile task});
}

/// @nodoc
class __$HideTaskCopyWithImpl<$Res> extends _$TasksListEventCopyWithImpl<$Res>
    implements _$HideTaskCopyWith<$Res> {
  __$HideTaskCopyWithImpl(_HideTask _value, $Res Function(_HideTask) _then)
      : super(_value, (v) => _then(v as _HideTask));

  @override
  _HideTask get _value => super._value as _HideTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_HideTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskTile,
    ));
  }
}

/// @nodoc

class _$_HideTask implements _HideTask {
  const _$_HideTask(this.task);

  @override
  final TaskTile task;

  @override
  String toString() {
    return 'TasksListEvent.hideTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HideTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$HideTaskCopyWith<_HideTask> get copyWith =>
      __$HideTaskCopyWithImpl<_HideTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskTile> tasks) initTasks,
    required TResult Function(TaskTile task) hideTask,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return hideTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return hideTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
    required TResult orElse(),
  }) {
    if (hideTask != null) {
      return hideTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitTasks value) initTasks,
    required TResult Function(_HideTask value) hideTask,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return hideTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return hideTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
    required TResult orElse(),
  }) {
    if (hideTask != null) {
      return hideTask(this);
    }
    return orElse();
  }
}

abstract class _HideTask implements TasksListEvent {
  const factory _HideTask(TaskTile task) = _$_HideTask;

  TaskTile get task;
  @JsonKey(ignore: true)
  _$HideTaskCopyWith<_HideTask> get copyWith =>
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
    required TResult Function(TaskTile task) hideTask,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return expandTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return expandTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
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
    required TResult Function(_HideTask value) hideTask,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return expandTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return expandTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
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
    required TResult Function(TaskTile task) hideTask,
    required TResult Function(TaskTile task) expandTask,
    required TResult Function() shrinkTask,
  }) {
    return shrinkTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
    TResult Function(TaskTile task)? expandTask,
    TResult Function()? shrinkTask,
  }) {
    return shrinkTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskTile> tasks)? initTasks,
    TResult Function(TaskTile task)? hideTask,
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
    required TResult Function(_HideTask value) hideTask,
    required TResult Function(_ExpandTask value) expandTask,
    required TResult Function(_ShrinkTask value) shrinkTask,
  }) {
    return shrinkTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
    TResult Function(_ExpandTask value)? expandTask,
    TResult Function(_ShrinkTask value)? shrinkTask,
  }) {
    return shrinkTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitTasks value)? initTasks,
    TResult Function(_HideTask value)? hideTask,
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

  _DataManaged dataManaged(List<TaskTile> shownTasks, TaskTile? expandedTask) {
    return _DataManaged(
      shownTasks,
      expandedTask,
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
    required TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)
        dataManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)?
        dataManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)?
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
    required TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)
        dataManaged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)?
        dataManaged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)?
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
  $Res call({List<TaskTile> shownTasks, TaskTile? expandedTask});
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
    ));
  }
}

/// @nodoc

class _$_DataManaged implements _DataManaged {
  const _$_DataManaged(this.shownTasks, this.expandedTask);

  @override
  final List<TaskTile> shownTasks;
  @override
  final TaskTile? expandedTask;

  @override
  String toString() {
    return 'TasksListState.dataManaged(shownTasks: $shownTasks, expandedTask: $expandedTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataManaged &&
            const DeepCollectionEquality()
                .equals(other.shownTasks, shownTasks) &&
            const DeepCollectionEquality()
                .equals(other.expandedTask, expandedTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shownTasks),
      const DeepCollectionEquality().hash(expandedTask));

  @JsonKey(ignore: true)
  @override
  _$DataManagedCopyWith<_DataManaged> get copyWith =>
      __$DataManagedCopyWithImpl<_DataManaged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)
        dataManaged,
  }) {
    return dataManaged(shownTasks, expandedTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)?
        dataManaged,
  }) {
    return dataManaged?.call(shownTasks, expandedTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskTile> shownTasks, TaskTile? expandedTask)?
        dataManaged,
    required TResult orElse(),
  }) {
    if (dataManaged != null) {
      return dataManaged(shownTasks, expandedTask);
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
      List<TaskTile> shownTasks, TaskTile? expandedTask) = _$_DataManaged;

  List<TaskTile> get shownTasks;
  TaskTile? get expandedTask;
  @JsonKey(ignore: true)
  _$DataManagedCopyWith<_DataManaged> get copyWith =>
      throw _privateConstructorUsedError;
}
