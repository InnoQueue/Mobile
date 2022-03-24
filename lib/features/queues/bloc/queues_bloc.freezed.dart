// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queues_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueuesEventTearOff {
  const _$QueuesEventTearOff();

  _LoadRequested loadRequested() {
    return const _LoadRequested();
  }
}

/// @nodoc
const $QueuesEvent = _$QueuesEventTearOff();

/// @nodoc
mixin _$QueuesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuesEventCopyWith<$Res> {
  factory $QueuesEventCopyWith(
          QueuesEvent value, $Res Function(QueuesEvent) then) =
      _$QueuesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueuesEventCopyWithImpl<$Res> implements $QueuesEventCopyWith<$Res> {
  _$QueuesEventCopyWithImpl(this._value, this._then);

  final QueuesEvent _value;
  // ignore: unused_field
  final $Res Function(QueuesEvent) _then;
}

/// @nodoc
abstract class _$LoadRequestedCopyWith<$Res> {
  factory _$LoadRequestedCopyWith(
          _LoadRequested value, $Res Function(_LoadRequested) then) =
      __$LoadRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadRequestedCopyWithImpl<$Res> extends _$QueuesEventCopyWithImpl<$Res>
    implements _$LoadRequestedCopyWith<$Res> {
  __$LoadRequestedCopyWithImpl(
      _LoadRequested _value, $Res Function(_LoadRequested) _then)
      : super(_value, (v) => _then(v as _LoadRequested));

  @override
  _LoadRequested get _value => super._value as _LoadRequested;
}

/// @nodoc

class _$_LoadRequested implements _LoadRequested {
  const _$_LoadRequested();

  @override
  String toString() {
    return 'QueuesEvent.loadRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadRequested,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadRequested implements QueuesEvent {
  const factory _LoadRequested() = _$_LoadRequested;
}

/// @nodoc
class _$QueuesStateTearOff {
  const _$QueuesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _DataLoaded dataLoaded(
      List<QueueModel> activeQueues, List<QueueModel> frozenQueues) {
    return _DataLoaded(
      activeQueues,
      frozenQueues,
    );
  }
}

/// @nodoc
const $QueuesState = _$QueuesStateTearOff();

/// @nodoc
mixin _$QueuesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)
        dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)?
        dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)?
        dataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoaded value) dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuesStateCopyWith<$Res> {
  factory $QueuesStateCopyWith(
          QueuesState value, $Res Function(QueuesState) then) =
      _$QueuesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueuesStateCopyWithImpl<$Res> implements $QueuesStateCopyWith<$Res> {
  _$QueuesStateCopyWithImpl(this._value, this._then);

  final QueuesState _value;
  // ignore: unused_field
  final $Res Function(QueuesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$QueuesStateCopyWithImpl<$Res>
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
    return 'QueuesState.initial()';
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
    required TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)
        dataLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)?
        dataLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)?
        dataLoaded,
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
    required TResult Function(_DataLoaded value) dataLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QueuesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DataLoadedCopyWith<$Res> {
  factory _$DataLoadedCopyWith(
          _DataLoaded value, $Res Function(_DataLoaded) then) =
      __$DataLoadedCopyWithImpl<$Res>;
  $Res call({List<QueueModel> activeQueues, List<QueueModel> frozenQueues});
}

/// @nodoc
class __$DataLoadedCopyWithImpl<$Res> extends _$QueuesStateCopyWithImpl<$Res>
    implements _$DataLoadedCopyWith<$Res> {
  __$DataLoadedCopyWithImpl(
      _DataLoaded _value, $Res Function(_DataLoaded) _then)
      : super(_value, (v) => _then(v as _DataLoaded));

  @override
  _DataLoaded get _value => super._value as _DataLoaded;

  @override
  $Res call({
    Object? activeQueues = freezed,
    Object? frozenQueues = freezed,
  }) {
    return _then(_DataLoaded(
      activeQueues == freezed
          ? _value.activeQueues
          : activeQueues // ignore: cast_nullable_to_non_nullable
              as List<QueueModel>,
      frozenQueues == freezed
          ? _value.frozenQueues
          : frozenQueues // ignore: cast_nullable_to_non_nullable
              as List<QueueModel>,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded(this.activeQueues, this.frozenQueues);

  @override
  final List<QueueModel> activeQueues;
  @override
  final List<QueueModel> frozenQueues;

  @override
  String toString() {
    return 'QueuesState.dataLoaded(activeQueues: $activeQueues, frozenQueues: $frozenQueues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataLoaded &&
            const DeepCollectionEquality()
                .equals(other.activeQueues, activeQueues) &&
            const DeepCollectionEquality()
                .equals(other.frozenQueues, frozenQueues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activeQueues),
      const DeepCollectionEquality().hash(frozenQueues));

  @JsonKey(ignore: true)
  @override
  _$DataLoadedCopyWith<_DataLoaded> get copyWith =>
      __$DataLoadedCopyWithImpl<_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)
        dataLoaded,
  }) {
    return dataLoaded(activeQueues, frozenQueues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)?
        dataLoaded,
  }) {
    return dataLoaded?.call(activeQueues, frozenQueues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<QueueModel> activeQueues, List<QueueModel> frozenQueues)?
        dataLoaded,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(activeQueues, frozenQueues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoaded value) dataLoaded,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements QueuesState {
  const factory _DataLoaded(
          List<QueueModel> activeQueues, List<QueueModel> frozenQueues) =
      _$_DataLoaded;

  List<QueueModel> get activeQueues;
  List<QueueModel> get frozenQueues;
  @JsonKey(ignore: true)
  _$DataLoadedCopyWith<_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
