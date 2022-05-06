// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_error_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServerErrorStateTearOff {
  const _$ServerErrorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ServerErrorState serverError() {
    return const _ServerErrorState();
  }

  _InternetConnectionErrorState internetConnectionError() {
    return const _InternetConnectionErrorState();
  }

  _CouldNotUpdateState couldNotUpdate() {
    return const _CouldNotUpdateState();
  }

  _ConnectionTimeoutState connectionTimeout() {
    return const _ConnectionTimeoutState();
  }
}

/// @nodoc
const $ServerErrorState = _$ServerErrorStateTearOff();

/// @nodoc
mixin _$ServerErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() couldNotUpdate,
    required TResult Function() connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServerErrorState value) serverError,
    required TResult Function(_InternetConnectionErrorState value)
        internetConnectionError,
    required TResult Function(_CouldNotUpdateState value) couldNotUpdate,
    required TResult Function(_ConnectionTimeoutState value) connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorStateCopyWith<$Res> {
  factory $ServerErrorStateCopyWith(
          ServerErrorState value, $Res Function(ServerErrorState) then) =
      _$ServerErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorStateCopyWithImpl<$Res>
    implements $ServerErrorStateCopyWith<$Res> {
  _$ServerErrorStateCopyWithImpl(this._value, this._then);

  final ServerErrorState _value;
  // ignore: unused_field
  final $Res Function(ServerErrorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ServerErrorStateCopyWithImpl<$Res>
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
    return 'ServerErrorState.initial()';
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
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() couldNotUpdate,
    required TResult Function() connectionTimeout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
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
    required TResult Function(_ServerErrorState value) serverError,
    required TResult Function(_InternetConnectionErrorState value)
        internetConnectionError,
    required TResult Function(_CouldNotUpdateState value) couldNotUpdate,
    required TResult Function(_ConnectionTimeoutState value) connectionTimeout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ServerErrorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ServerErrorStateCopyWith<$Res> {
  factory _$ServerErrorStateCopyWith(
          _ServerErrorState value, $Res Function(_ServerErrorState) then) =
      __$ServerErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorStateCopyWithImpl<$Res>
    extends _$ServerErrorStateCopyWithImpl<$Res>
    implements _$ServerErrorStateCopyWith<$Res> {
  __$ServerErrorStateCopyWithImpl(
      _ServerErrorState _value, $Res Function(_ServerErrorState) _then)
      : super(_value, (v) => _then(v as _ServerErrorState));

  @override
  _ServerErrorState get _value => super._value as _ServerErrorState;
}

/// @nodoc

class _$_ServerErrorState implements _ServerErrorState {
  const _$_ServerErrorState();

  @override
  String toString() {
    return 'ServerErrorState.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() couldNotUpdate,
    required TResult Function() connectionTimeout,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServerErrorState value) serverError,
    required TResult Function(_InternetConnectionErrorState value)
        internetConnectionError,
    required TResult Function(_CouldNotUpdateState value) couldNotUpdate,
    required TResult Function(_ConnectionTimeoutState value) connectionTimeout,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerErrorState implements ServerErrorState {
  const factory _ServerErrorState() = _$_ServerErrorState;
}

/// @nodoc
abstract class _$InternetConnectionErrorStateCopyWith<$Res> {
  factory _$InternetConnectionErrorStateCopyWith(
          _InternetConnectionErrorState value,
          $Res Function(_InternetConnectionErrorState) then) =
      __$InternetConnectionErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternetConnectionErrorStateCopyWithImpl<$Res>
    extends _$ServerErrorStateCopyWithImpl<$Res>
    implements _$InternetConnectionErrorStateCopyWith<$Res> {
  __$InternetConnectionErrorStateCopyWithImpl(
      _InternetConnectionErrorState _value,
      $Res Function(_InternetConnectionErrorState) _then)
      : super(_value, (v) => _then(v as _InternetConnectionErrorState));

  @override
  _InternetConnectionErrorState get _value =>
      super._value as _InternetConnectionErrorState;
}

/// @nodoc

class _$_InternetConnectionErrorState implements _InternetConnectionErrorState {
  const _$_InternetConnectionErrorState();

  @override
  String toString() {
    return 'ServerErrorState.internetConnectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternetConnectionErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() couldNotUpdate,
    required TResult Function() connectionTimeout,
  }) {
    return internetConnectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
  }) {
    return internetConnectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (internetConnectionError != null) {
      return internetConnectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServerErrorState value) serverError,
    required TResult Function(_InternetConnectionErrorState value)
        internetConnectionError,
    required TResult Function(_CouldNotUpdateState value) couldNotUpdate,
    required TResult Function(_ConnectionTimeoutState value) connectionTimeout,
  }) {
    return internetConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
  }) {
    return internetConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (internetConnectionError != null) {
      return internetConnectionError(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectionErrorState implements ServerErrorState {
  const factory _InternetConnectionErrorState() =
      _$_InternetConnectionErrorState;
}

/// @nodoc
abstract class _$CouldNotUpdateStateCopyWith<$Res> {
  factory _$CouldNotUpdateStateCopyWith(_CouldNotUpdateState value,
          $Res Function(_CouldNotUpdateState) then) =
      __$CouldNotUpdateStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CouldNotUpdateStateCopyWithImpl<$Res>
    extends _$ServerErrorStateCopyWithImpl<$Res>
    implements _$CouldNotUpdateStateCopyWith<$Res> {
  __$CouldNotUpdateStateCopyWithImpl(
      _CouldNotUpdateState _value, $Res Function(_CouldNotUpdateState) _then)
      : super(_value, (v) => _then(v as _CouldNotUpdateState));

  @override
  _CouldNotUpdateState get _value => super._value as _CouldNotUpdateState;
}

/// @nodoc

class _$_CouldNotUpdateState implements _CouldNotUpdateState {
  const _$_CouldNotUpdateState();

  @override
  String toString() {
    return 'ServerErrorState.couldNotUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CouldNotUpdateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() couldNotUpdate,
    required TResult Function() connectionTimeout,
  }) {
    return couldNotUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
  }) {
    return couldNotUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (couldNotUpdate != null) {
      return couldNotUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServerErrorState value) serverError,
    required TResult Function(_InternetConnectionErrorState value)
        internetConnectionError,
    required TResult Function(_CouldNotUpdateState value) couldNotUpdate,
    required TResult Function(_ConnectionTimeoutState value) connectionTimeout,
  }) {
    return couldNotUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
  }) {
    return couldNotUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (couldNotUpdate != null) {
      return couldNotUpdate(this);
    }
    return orElse();
  }
}

abstract class _CouldNotUpdateState implements ServerErrorState {
  const factory _CouldNotUpdateState() = _$_CouldNotUpdateState;
}

/// @nodoc
abstract class _$ConnectionTimeoutStateCopyWith<$Res> {
  factory _$ConnectionTimeoutStateCopyWith(_ConnectionTimeoutState value,
          $Res Function(_ConnectionTimeoutState) then) =
      __$ConnectionTimeoutStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionTimeoutStateCopyWithImpl<$Res>
    extends _$ServerErrorStateCopyWithImpl<$Res>
    implements _$ConnectionTimeoutStateCopyWith<$Res> {
  __$ConnectionTimeoutStateCopyWithImpl(_ConnectionTimeoutState _value,
      $Res Function(_ConnectionTimeoutState) _then)
      : super(_value, (v) => _then(v as _ConnectionTimeoutState));

  @override
  _ConnectionTimeoutState get _value => super._value as _ConnectionTimeoutState;
}

/// @nodoc

class _$_ConnectionTimeoutState implements _ConnectionTimeoutState {
  const _$_ConnectionTimeoutState();

  @override
  String toString() {
    return 'ServerErrorState.connectionTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConnectionTimeoutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() couldNotUpdate,
    required TResult Function() connectionTimeout,
  }) {
    return connectionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
  }) {
    return connectionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? couldNotUpdate,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServerErrorState value) serverError,
    required TResult Function(_InternetConnectionErrorState value)
        internetConnectionError,
    required TResult Function(_CouldNotUpdateState value) couldNotUpdate,
    required TResult Function(_ConnectionTimeoutState value) connectionTimeout,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServerErrorState value)? serverError,
    TResult Function(_InternetConnectionErrorState value)?
        internetConnectionError,
    TResult Function(_CouldNotUpdateState value)? couldNotUpdate,
    TResult Function(_ConnectionTimeoutState value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeoutState implements ServerErrorState {
  const factory _ConnectionTimeoutState() = _$_ConnectionTimeoutState;
}

/// @nodoc
class _$ServerErrorEventTearOff {
  const _$ServerErrorEventTearOff();

  _InitialEvent initial() {
    return const _InitialEvent();
  }

  _ServerErrorEvent serverError() {
    return const _ServerErrorEvent();
  }

  _InternetConnectionErrorEvent internetConnectionError() {
    return const _InternetConnectionErrorEvent();
  }

  _ConnectionTimeoutEvent connectionTimeout() {
    return const _ConnectionTimeoutEvent();
  }

  _CouldNotUpdateEvent couldNotUpdate() {
    return const _CouldNotUpdateEvent();
  }
}

/// @nodoc
const $ServerErrorEvent = _$ServerErrorEventTearOff();

/// @nodoc
mixin _$ServerErrorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() connectionTimeout,
    required TResult Function() couldNotUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ServerErrorEvent value) serverError,
    required TResult Function(_InternetConnectionErrorEvent value)
        internetConnectionError,
    required TResult Function(_ConnectionTimeoutEvent value) connectionTimeout,
    required TResult Function(_CouldNotUpdateEvent value) couldNotUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorEventCopyWith<$Res> {
  factory $ServerErrorEventCopyWith(
          ServerErrorEvent value, $Res Function(ServerErrorEvent) then) =
      _$ServerErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorEventCopyWithImpl<$Res>
    implements $ServerErrorEventCopyWith<$Res> {
  _$ServerErrorEventCopyWithImpl(this._value, this._then);

  final ServerErrorEvent _value;
  // ignore: unused_field
  final $Res Function(ServerErrorEvent) _then;
}

/// @nodoc
abstract class _$InitialEventCopyWith<$Res> {
  factory _$InitialEventCopyWith(
          _InitialEvent value, $Res Function(_InitialEvent) then) =
      __$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEventCopyWithImpl<$Res>
    extends _$ServerErrorEventCopyWithImpl<$Res>
    implements _$InitialEventCopyWith<$Res> {
  __$InitialEventCopyWithImpl(
      _InitialEvent _value, $Res Function(_InitialEvent) _then)
      : super(_value, (v) => _then(v as _InitialEvent));

  @override
  _InitialEvent get _value => super._value as _InitialEvent;
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'ServerErrorEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() connectionTimeout,
    required TResult Function() couldNotUpdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ServerErrorEvent value) serverError,
    required TResult Function(_InternetConnectionErrorEvent value)
        internetConnectionError,
    required TResult Function(_ConnectionTimeoutEvent value) connectionTimeout,
    required TResult Function(_CouldNotUpdateEvent value) couldNotUpdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements ServerErrorEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$ServerErrorEventCopyWith<$Res> {
  factory _$ServerErrorEventCopyWith(
          _ServerErrorEvent value, $Res Function(_ServerErrorEvent) then) =
      __$ServerErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorEventCopyWithImpl<$Res>
    extends _$ServerErrorEventCopyWithImpl<$Res>
    implements _$ServerErrorEventCopyWith<$Res> {
  __$ServerErrorEventCopyWithImpl(
      _ServerErrorEvent _value, $Res Function(_ServerErrorEvent) _then)
      : super(_value, (v) => _then(v as _ServerErrorEvent));

  @override
  _ServerErrorEvent get _value => super._value as _ServerErrorEvent;
}

/// @nodoc

class _$_ServerErrorEvent implements _ServerErrorEvent {
  const _$_ServerErrorEvent();

  @override
  String toString() {
    return 'ServerErrorEvent.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() connectionTimeout,
    required TResult Function() couldNotUpdate,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ServerErrorEvent value) serverError,
    required TResult Function(_InternetConnectionErrorEvent value)
        internetConnectionError,
    required TResult Function(_ConnectionTimeoutEvent value) connectionTimeout,
    required TResult Function(_CouldNotUpdateEvent value) couldNotUpdate,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerErrorEvent implements ServerErrorEvent {
  const factory _ServerErrorEvent() = _$_ServerErrorEvent;
}

/// @nodoc
abstract class _$InternetConnectionErrorEventCopyWith<$Res> {
  factory _$InternetConnectionErrorEventCopyWith(
          _InternetConnectionErrorEvent value,
          $Res Function(_InternetConnectionErrorEvent) then) =
      __$InternetConnectionErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternetConnectionErrorEventCopyWithImpl<$Res>
    extends _$ServerErrorEventCopyWithImpl<$Res>
    implements _$InternetConnectionErrorEventCopyWith<$Res> {
  __$InternetConnectionErrorEventCopyWithImpl(
      _InternetConnectionErrorEvent _value,
      $Res Function(_InternetConnectionErrorEvent) _then)
      : super(_value, (v) => _then(v as _InternetConnectionErrorEvent));

  @override
  _InternetConnectionErrorEvent get _value =>
      super._value as _InternetConnectionErrorEvent;
}

/// @nodoc

class _$_InternetConnectionErrorEvent implements _InternetConnectionErrorEvent {
  const _$_InternetConnectionErrorEvent();

  @override
  String toString() {
    return 'ServerErrorEvent.internetConnectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternetConnectionErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() connectionTimeout,
    required TResult Function() couldNotUpdate,
  }) {
    return internetConnectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
  }) {
    return internetConnectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (internetConnectionError != null) {
      return internetConnectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ServerErrorEvent value) serverError,
    required TResult Function(_InternetConnectionErrorEvent value)
        internetConnectionError,
    required TResult Function(_ConnectionTimeoutEvent value) connectionTimeout,
    required TResult Function(_CouldNotUpdateEvent value) couldNotUpdate,
  }) {
    return internetConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
  }) {
    return internetConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (internetConnectionError != null) {
      return internetConnectionError(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectionErrorEvent implements ServerErrorEvent {
  const factory _InternetConnectionErrorEvent() =
      _$_InternetConnectionErrorEvent;
}

/// @nodoc
abstract class _$ConnectionTimeoutEventCopyWith<$Res> {
  factory _$ConnectionTimeoutEventCopyWith(_ConnectionTimeoutEvent value,
          $Res Function(_ConnectionTimeoutEvent) then) =
      __$ConnectionTimeoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionTimeoutEventCopyWithImpl<$Res>
    extends _$ServerErrorEventCopyWithImpl<$Res>
    implements _$ConnectionTimeoutEventCopyWith<$Res> {
  __$ConnectionTimeoutEventCopyWithImpl(_ConnectionTimeoutEvent _value,
      $Res Function(_ConnectionTimeoutEvent) _then)
      : super(_value, (v) => _then(v as _ConnectionTimeoutEvent));

  @override
  _ConnectionTimeoutEvent get _value => super._value as _ConnectionTimeoutEvent;
}

/// @nodoc

class _$_ConnectionTimeoutEvent implements _ConnectionTimeoutEvent {
  const _$_ConnectionTimeoutEvent();

  @override
  String toString() {
    return 'ServerErrorEvent.connectionTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConnectionTimeoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() connectionTimeout,
    required TResult Function() couldNotUpdate,
  }) {
    return connectionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
  }) {
    return connectionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ServerErrorEvent value) serverError,
    required TResult Function(_InternetConnectionErrorEvent value)
        internetConnectionError,
    required TResult Function(_ConnectionTimeoutEvent value) connectionTimeout,
    required TResult Function(_CouldNotUpdateEvent value) couldNotUpdate,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeoutEvent implements ServerErrorEvent {
  const factory _ConnectionTimeoutEvent() = _$_ConnectionTimeoutEvent;
}

/// @nodoc
abstract class _$CouldNotUpdateEventCopyWith<$Res> {
  factory _$CouldNotUpdateEventCopyWith(_CouldNotUpdateEvent value,
          $Res Function(_CouldNotUpdateEvent) then) =
      __$CouldNotUpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CouldNotUpdateEventCopyWithImpl<$Res>
    extends _$ServerErrorEventCopyWithImpl<$Res>
    implements _$CouldNotUpdateEventCopyWith<$Res> {
  __$CouldNotUpdateEventCopyWithImpl(
      _CouldNotUpdateEvent _value, $Res Function(_CouldNotUpdateEvent) _then)
      : super(_value, (v) => _then(v as _CouldNotUpdateEvent));

  @override
  _CouldNotUpdateEvent get _value => super._value as _CouldNotUpdateEvent;
}

/// @nodoc

class _$_CouldNotUpdateEvent implements _CouldNotUpdateEvent {
  const _$_CouldNotUpdateEvent();

  @override
  String toString() {
    return 'ServerErrorEvent.couldNotUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CouldNotUpdateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serverError,
    required TResult Function() internetConnectionError,
    required TResult Function() connectionTimeout,
    required TResult Function() couldNotUpdate,
  }) {
    return couldNotUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
  }) {
    return couldNotUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serverError,
    TResult Function()? internetConnectionError,
    TResult Function()? connectionTimeout,
    TResult Function()? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (couldNotUpdate != null) {
      return couldNotUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_ServerErrorEvent value) serverError,
    required TResult Function(_InternetConnectionErrorEvent value)
        internetConnectionError,
    required TResult Function(_ConnectionTimeoutEvent value) connectionTimeout,
    required TResult Function(_CouldNotUpdateEvent value) couldNotUpdate,
  }) {
    return couldNotUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
  }) {
    return couldNotUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_ServerErrorEvent value)? serverError,
    TResult Function(_InternetConnectionErrorEvent value)?
        internetConnectionError,
    TResult Function(_ConnectionTimeoutEvent value)? connectionTimeout,
    TResult Function(_CouldNotUpdateEvent value)? couldNotUpdate,
    required TResult orElse(),
  }) {
    if (couldNotUpdate != null) {
      return couldNotUpdate(this);
    }
    return orElse();
  }
}

abstract class _CouldNotUpdateEvent implements ServerErrorEvent {
  const factory _CouldNotUpdateEvent() = _$_CouldNotUpdateEvent;
}
