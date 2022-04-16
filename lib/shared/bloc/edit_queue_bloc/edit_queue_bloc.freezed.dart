// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_queue_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditQueueStateTearOff {
  const _$EditQueueStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UpdateRequested updateRequested() {
    return const _UpdateRequested();
  }

  _CancelRequested cancelRequested() {
    return const _CancelRequested();
  }
}

/// @nodoc
const $EditQueueState = _$EditQueueStateTearOff();

/// @nodoc
mixin _$EditQueueState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateRequested,
    required TResult Function() cancelRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_CancelRequested value) cancelRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditQueueStateCopyWith<$Res> {
  factory $EditQueueStateCopyWith(
          EditQueueState value, $Res Function(EditQueueState) then) =
      _$EditQueueStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditQueueStateCopyWithImpl<$Res>
    implements $EditQueueStateCopyWith<$Res> {
  _$EditQueueStateCopyWithImpl(this._value, this._then);

  final EditQueueState _value;
  // ignore: unused_field
  final $Res Function(EditQueueState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EditQueueStateCopyWithImpl<$Res>
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
    return 'EditQueueState.initial()';
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
    required TResult Function() updateRequested,
    required TResult Function() cancelRequested,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
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
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_CancelRequested value) cancelRequested,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditQueueState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdateRequestedCopyWith<$Res> {
  factory _$UpdateRequestedCopyWith(
          _UpdateRequested value, $Res Function(_UpdateRequested) then) =
      __$UpdateRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateRequestedCopyWithImpl<$Res>
    extends _$EditQueueStateCopyWithImpl<$Res>
    implements _$UpdateRequestedCopyWith<$Res> {
  __$UpdateRequestedCopyWithImpl(
      _UpdateRequested _value, $Res Function(_UpdateRequested) _then)
      : super(_value, (v) => _then(v as _UpdateRequested));

  @override
  _UpdateRequested get _value => super._value as _UpdateRequested;
}

/// @nodoc

class _$_UpdateRequested implements _UpdateRequested {
  const _$_UpdateRequested();

  @override
  String toString() {
    return 'EditQueueState.updateRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateRequested,
    required TResult Function() cancelRequested,
  }) {
    return updateRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
  }) {
    return updateRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_CancelRequested value) cancelRequested,
  }) {
    return updateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
  }) {
    return updateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(this);
    }
    return orElse();
  }
}

abstract class _UpdateRequested implements EditQueueState {
  const factory _UpdateRequested() = _$_UpdateRequested;
}

/// @nodoc
abstract class _$CancelRequestedCopyWith<$Res> {
  factory _$CancelRequestedCopyWith(
          _CancelRequested value, $Res Function(_CancelRequested) then) =
      __$CancelRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelRequestedCopyWithImpl<$Res>
    extends _$EditQueueStateCopyWithImpl<$Res>
    implements _$CancelRequestedCopyWith<$Res> {
  __$CancelRequestedCopyWithImpl(
      _CancelRequested _value, $Res Function(_CancelRequested) _then)
      : super(_value, (v) => _then(v as _CancelRequested));

  @override
  _CancelRequested get _value => super._value as _CancelRequested;
}

/// @nodoc

class _$_CancelRequested implements _CancelRequested {
  const _$_CancelRequested();

  @override
  String toString() {
    return 'EditQueueState.cancelRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateRequested,
    required TResult Function() cancelRequested,
  }) {
    return cancelRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
  }) {
    return cancelRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateRequested,
    TResult Function()? cancelRequested,
    required TResult orElse(),
  }) {
    if (cancelRequested != null) {
      return cancelRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_CancelRequested value) cancelRequested,
  }) {
    return cancelRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
  }) {
    return cancelRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_CancelRequested value)? cancelRequested,
    required TResult orElse(),
  }) {
    if (cancelRequested != null) {
      return cancelRequested(this);
    }
    return orElse();
  }
}

abstract class _CancelRequested implements EditQueueState {
  const factory _CancelRequested() = _$_CancelRequested;
}

/// @nodoc
class _$EditQueueEventTearOff {
  const _$EditQueueEventTearOff();

  _Reset reset() {
    return const _Reset();
  }

  _Update requestUpdate() {
    return const _Update();
  }

  _Cancel requestCancel() {
    return const _Cancel();
  }
}

/// @nodoc
const $EditQueueEvent = _$EditQueueEventTearOff();

/// @nodoc
mixin _$EditQueueEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() requestUpdate,
    required TResult Function() requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Update value) requestUpdate,
    required TResult Function(_Cancel value) requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditQueueEventCopyWith<$Res> {
  factory $EditQueueEventCopyWith(
          EditQueueEvent value, $Res Function(EditQueueEvent) then) =
      _$EditQueueEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditQueueEventCopyWithImpl<$Res>
    implements $EditQueueEventCopyWith<$Res> {
  _$EditQueueEventCopyWithImpl(this._value, this._then);

  final EditQueueEvent _value;
  // ignore: unused_field
  final $Res Function(EditQueueEvent) _then;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$EditQueueEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'EditQueueEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() requestUpdate,
    required TResult Function() requestCancel,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Update value) requestUpdate,
    required TResult Function(_Cancel value) requestCancel,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements EditQueueEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$EditQueueEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update();

  @override
  String toString() {
    return 'EditQueueEvent.requestUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Update);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() requestUpdate,
    required TResult Function() requestCancel,
  }) {
    return requestUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
  }) {
    return requestUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
    required TResult orElse(),
  }) {
    if (requestUpdate != null) {
      return requestUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Update value) requestUpdate,
    required TResult Function(_Cancel value) requestCancel,
  }) {
    return requestUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
  }) {
    return requestUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
    required TResult orElse(),
  }) {
    if (requestUpdate != null) {
      return requestUpdate(this);
    }
    return orElse();
  }
}

abstract class _Update implements EditQueueEvent {
  const factory _Update() = _$_Update;
}

/// @nodoc
abstract class _$CancelCopyWith<$Res> {
  factory _$CancelCopyWith(_Cancel value, $Res Function(_Cancel) then) =
      __$CancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelCopyWithImpl<$Res> extends _$EditQueueEventCopyWithImpl<$Res>
    implements _$CancelCopyWith<$Res> {
  __$CancelCopyWithImpl(_Cancel _value, $Res Function(_Cancel) _then)
      : super(_value, (v) => _then(v as _Cancel));

  @override
  _Cancel get _value => super._value as _Cancel;
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel();

  @override
  String toString() {
    return 'EditQueueEvent.requestCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() requestUpdate,
    required TResult Function() requestCancel,
  }) {
    return requestCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
  }) {
    return requestCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? requestUpdate,
    TResult Function()? requestCancel,
    required TResult orElse(),
  }) {
    if (requestCancel != null) {
      return requestCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Update value) requestUpdate,
    required TResult Function(_Cancel value) requestCancel,
  }) {
    return requestCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
  }) {
    return requestCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Update value)? requestUpdate,
    TResult Function(_Cancel value)? requestCancel,
    required TResult orElse(),
  }) {
    if (requestCancel != null) {
      return requestCancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements EditQueueEvent {
  const factory _Cancel() = _$_Cancel;
}
