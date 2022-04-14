// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queue_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueueDetailsEventTearOff {
  const _$QueueDetailsEventTearOff();

  _OpenQueue openQueue(QueueModel queue) {
    return _OpenQueue(
      queue,
    );
  }

  _LeaveQueue leaveQueue() {
    return const _LeaveQueue();
  }

  _InviteUser inviteUser() {
    return const _InviteUser();
  }

  _FreezeQueue freezeQueue() {
    return const _FreezeQueue();
  }

  _EditQueue editQueue() {
    return const _EditQueue();
  }
}

/// @nodoc
const $QueueDetailsEvent = _$QueueDetailsEventTearOff();

/// @nodoc
mixin _$QueueDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueueModel queue) openQueue,
    required TResult Function() leaveQueue,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() editQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenQueue value) openQueue,
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_EditQueue value) editQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueDetailsEventCopyWith<$Res> {
  factory $QueueDetailsEventCopyWith(
          QueueDetailsEvent value, $Res Function(QueueDetailsEvent) then) =
      _$QueueDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueDetailsEventCopyWithImpl<$Res>
    implements $QueueDetailsEventCopyWith<$Res> {
  _$QueueDetailsEventCopyWithImpl(this._value, this._then);

  final QueueDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(QueueDetailsEvent) _then;
}

/// @nodoc
abstract class _$OpenQueueCopyWith<$Res> {
  factory _$OpenQueueCopyWith(
          _OpenQueue value, $Res Function(_OpenQueue) then) =
      __$OpenQueueCopyWithImpl<$Res>;
  $Res call({QueueModel queue});

  $QueueModelCopyWith<$Res> get queue;
}

/// @nodoc
class __$OpenQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$OpenQueueCopyWith<$Res> {
  __$OpenQueueCopyWithImpl(_OpenQueue _value, $Res Function(_OpenQueue) _then)
      : super(_value, (v) => _then(v as _OpenQueue));

  @override
  _OpenQueue get _value => super._value as _OpenQueue;

  @override
  $Res call({
    Object? queue = freezed,
  }) {
    return _then(_OpenQueue(
      queue == freezed
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as QueueModel,
    ));
  }

  @override
  $QueueModelCopyWith<$Res> get queue {
    return $QueueModelCopyWith<$Res>(_value.queue, (value) {
      return _then(_value.copyWith(queue: value));
    });
  }
}

/// @nodoc

class _$_OpenQueue implements _OpenQueue {
  const _$_OpenQueue(this.queue);

  @override
  final QueueModel queue;

  @override
  String toString() {
    return 'QueueDetailsEvent.openQueue(queue: $queue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenQueue &&
            const DeepCollectionEquality().equals(other.queue, queue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(queue));

  @JsonKey(ignore: true)
  @override
  _$OpenQueueCopyWith<_OpenQueue> get copyWith =>
      __$OpenQueueCopyWithImpl<_OpenQueue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueueModel queue) openQueue,
    required TResult Function() leaveQueue,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() editQueue,
  }) {
    return openQueue(queue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
  }) {
    return openQueue?.call(queue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
    required TResult orElse(),
  }) {
    if (openQueue != null) {
      return openQueue(queue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenQueue value) openQueue,
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_EditQueue value) editQueue,
  }) {
    return openQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
  }) {
    return openQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
    required TResult orElse(),
  }) {
    if (openQueue != null) {
      return openQueue(this);
    }
    return orElse();
  }
}

abstract class _OpenQueue implements QueueDetailsEvent {
  const factory _OpenQueue(QueueModel queue) = _$_OpenQueue;

  QueueModel get queue;
  @JsonKey(ignore: true)
  _$OpenQueueCopyWith<_OpenQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeaveQueueCopyWith<$Res> {
  factory _$LeaveQueueCopyWith(
          _LeaveQueue value, $Res Function(_LeaveQueue) then) =
      __$LeaveQueueCopyWithImpl<$Res>;
}

/// @nodoc
class __$LeaveQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$LeaveQueueCopyWith<$Res> {
  __$LeaveQueueCopyWithImpl(
      _LeaveQueue _value, $Res Function(_LeaveQueue) _then)
      : super(_value, (v) => _then(v as _LeaveQueue));

  @override
  _LeaveQueue get _value => super._value as _LeaveQueue;
}

/// @nodoc

class _$_LeaveQueue implements _LeaveQueue {
  const _$_LeaveQueue();

  @override
  String toString() {
    return 'QueueDetailsEvent.leaveQueue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LeaveQueue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueueModel queue) openQueue,
    required TResult Function() leaveQueue,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() editQueue,
  }) {
    return leaveQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
  }) {
    return leaveQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
    required TResult orElse(),
  }) {
    if (leaveQueue != null) {
      return leaveQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenQueue value) openQueue,
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_EditQueue value) editQueue,
  }) {
    return leaveQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
  }) {
    return leaveQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
    required TResult orElse(),
  }) {
    if (leaveQueue != null) {
      return leaveQueue(this);
    }
    return orElse();
  }
}

abstract class _LeaveQueue implements QueueDetailsEvent {
  const factory _LeaveQueue() = _$_LeaveQueue;
}

/// @nodoc
abstract class _$InviteUserCopyWith<$Res> {
  factory _$InviteUserCopyWith(
          _InviteUser value, $Res Function(_InviteUser) then) =
      __$InviteUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$InviteUserCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$InviteUserCopyWith<$Res> {
  __$InviteUserCopyWithImpl(
      _InviteUser _value, $Res Function(_InviteUser) _then)
      : super(_value, (v) => _then(v as _InviteUser));

  @override
  _InviteUser get _value => super._value as _InviteUser;
}

/// @nodoc

class _$_InviteUser implements _InviteUser {
  const _$_InviteUser();

  @override
  String toString() {
    return 'QueueDetailsEvent.inviteUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InviteUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueueModel queue) openQueue,
    required TResult Function() leaveQueue,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() editQueue,
  }) {
    return inviteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
  }) {
    return inviteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
    required TResult orElse(),
  }) {
    if (inviteUser != null) {
      return inviteUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenQueue value) openQueue,
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_EditQueue value) editQueue,
  }) {
    return inviteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
  }) {
    return inviteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
    required TResult orElse(),
  }) {
    if (inviteUser != null) {
      return inviteUser(this);
    }
    return orElse();
  }
}

abstract class _InviteUser implements QueueDetailsEvent {
  const factory _InviteUser() = _$_InviteUser;
}

/// @nodoc
abstract class _$FreezeQueueCopyWith<$Res> {
  factory _$FreezeQueueCopyWith(
          _FreezeQueue value, $Res Function(_FreezeQueue) then) =
      __$FreezeQueueCopyWithImpl<$Res>;
}

/// @nodoc
class __$FreezeQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$FreezeQueueCopyWith<$Res> {
  __$FreezeQueueCopyWithImpl(
      _FreezeQueue _value, $Res Function(_FreezeQueue) _then)
      : super(_value, (v) => _then(v as _FreezeQueue));

  @override
  _FreezeQueue get _value => super._value as _FreezeQueue;
}

/// @nodoc

class _$_FreezeQueue implements _FreezeQueue {
  const _$_FreezeQueue();

  @override
  String toString() {
    return 'QueueDetailsEvent.freezeQueue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FreezeQueue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueueModel queue) openQueue,
    required TResult Function() leaveQueue,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() editQueue,
  }) {
    return freezeQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
  }) {
    return freezeQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
    required TResult orElse(),
  }) {
    if (freezeQueue != null) {
      return freezeQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenQueue value) openQueue,
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_EditQueue value) editQueue,
  }) {
    return freezeQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
  }) {
    return freezeQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
    required TResult orElse(),
  }) {
    if (freezeQueue != null) {
      return freezeQueue(this);
    }
    return orElse();
  }
}

abstract class _FreezeQueue implements QueueDetailsEvent {
  const factory _FreezeQueue() = _$_FreezeQueue;
}

/// @nodoc
abstract class _$EditQueueCopyWith<$Res> {
  factory _$EditQueueCopyWith(
          _EditQueue value, $Res Function(_EditQueue) then) =
      __$EditQueueCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$EditQueueCopyWith<$Res> {
  __$EditQueueCopyWithImpl(_EditQueue _value, $Res Function(_EditQueue) _then)
      : super(_value, (v) => _then(v as _EditQueue));

  @override
  _EditQueue get _value => super._value as _EditQueue;
}

/// @nodoc

class _$_EditQueue implements _EditQueue {
  const _$_EditQueue();

  @override
  String toString() {
    return 'QueueDetailsEvent.editQueue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EditQueue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueueModel queue) openQueue,
    required TResult Function() leaveQueue,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() editQueue,
  }) {
    return editQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
  }) {
    return editQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueueModel queue)? openQueue,
    TResult Function()? leaveQueue,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? editQueue,
    required TResult orElse(),
  }) {
    if (editQueue != null) {
      return editQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenQueue value) openQueue,
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_EditQueue value) editQueue,
  }) {
    return editQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
  }) {
    return editQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenQueue value)? openQueue,
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_EditQueue value)? editQueue,
    required TResult orElse(),
  }) {
    if (editQueue != null) {
      return editQueue(this);
    }
    return orElse();
  }
}

abstract class _EditQueue implements QueueDetailsEvent {
  const factory _EditQueue() = _$_EditQueue;
}

/// @nodoc
class _$QueueDetailsStateTearOff {
  const _$QueueDetailsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _QueueOpened queueOpened(QueueModel queue, bool editable) {
    return _QueueOpened(
      queue,
      editable,
    );
  }

  _QueueLeft queueLeft() {
    return const _QueueLeft();
  }

  _QueueFreezed queueFreezed() {
    return const _QueueFreezed();
  }
}

/// @nodoc
const $QueueDetailsState = _$QueueDetailsStateTearOff();

/// @nodoc
mixin _$QueueDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueModel queue, bool editable) queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueOpened value) queueOpened,
    required TResult Function(_QueueLeft value) queueLeft,
    required TResult Function(_QueueFreezed value) queueFreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueDetailsStateCopyWith<$Res> {
  factory $QueueDetailsStateCopyWith(
          QueueDetailsState value, $Res Function(QueueDetailsState) then) =
      _$QueueDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueDetailsStateCopyWithImpl<$Res>
    implements $QueueDetailsStateCopyWith<$Res> {
  _$QueueDetailsStateCopyWithImpl(this._value, this._then);

  final QueueDetailsState _value;
  // ignore: unused_field
  final $Res Function(QueueDetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$QueueDetailsStateCopyWithImpl<$Res>
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
    return 'QueueDetailsState.initial()';
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
    required TResult Function(QueueModel queue, bool editable) queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
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
    required TResult Function(_QueueOpened value) queueOpened,
    required TResult Function(_QueueLeft value) queueLeft,
    required TResult Function(_QueueFreezed value) queueFreezed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QueueDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$QueueOpenedCopyWith<$Res> {
  factory _$QueueOpenedCopyWith(
          _QueueOpened value, $Res Function(_QueueOpened) then) =
      __$QueueOpenedCopyWithImpl<$Res>;
  $Res call({QueueModel queue, bool editable});

  $QueueModelCopyWith<$Res> get queue;
}

/// @nodoc
class __$QueueOpenedCopyWithImpl<$Res>
    extends _$QueueDetailsStateCopyWithImpl<$Res>
    implements _$QueueOpenedCopyWith<$Res> {
  __$QueueOpenedCopyWithImpl(
      _QueueOpened _value, $Res Function(_QueueOpened) _then)
      : super(_value, (v) => _then(v as _QueueOpened));

  @override
  _QueueOpened get _value => super._value as _QueueOpened;

  @override
  $Res call({
    Object? queue = freezed,
    Object? editable = freezed,
  }) {
    return _then(_QueueOpened(
      queue == freezed
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as QueueModel,
      editable == freezed
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $QueueModelCopyWith<$Res> get queue {
    return $QueueModelCopyWith<$Res>(_value.queue, (value) {
      return _then(_value.copyWith(queue: value));
    });
  }
}

/// @nodoc

class _$_QueueOpened implements _QueueOpened {
  const _$_QueueOpened(this.queue, this.editable);

  @override
  final QueueModel queue;
  @override
  final bool editable;

  @override
  String toString() {
    return 'QueueDetailsState.queueOpened(queue: $queue, editable: $editable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueueOpened &&
            const DeepCollectionEquality().equals(other.queue, queue) &&
            const DeepCollectionEquality().equals(other.editable, editable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(queue),
      const DeepCollectionEquality().hash(editable));

  @JsonKey(ignore: true)
  @override
  _$QueueOpenedCopyWith<_QueueOpened> get copyWith =>
      __$QueueOpenedCopyWithImpl<_QueueOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueModel queue, bool editable) queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
  }) {
    return queueOpened(queue, editable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
  }) {
    return queueOpened?.call(queue, editable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    required TResult orElse(),
  }) {
    if (queueOpened != null) {
      return queueOpened(queue, editable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueOpened value) queueOpened,
    required TResult Function(_QueueLeft value) queueLeft,
    required TResult Function(_QueueFreezed value) queueFreezed,
  }) {
    return queueOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
  }) {
    return queueOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    required TResult orElse(),
  }) {
    if (queueOpened != null) {
      return queueOpened(this);
    }
    return orElse();
  }
}

abstract class _QueueOpened implements QueueDetailsState {
  const factory _QueueOpened(QueueModel queue, bool editable) = _$_QueueOpened;

  QueueModel get queue;
  bool get editable;
  @JsonKey(ignore: true)
  _$QueueOpenedCopyWith<_QueueOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueueLeftCopyWith<$Res> {
  factory _$QueueLeftCopyWith(
          _QueueLeft value, $Res Function(_QueueLeft) then) =
      __$QueueLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$QueueLeftCopyWithImpl<$Res>
    extends _$QueueDetailsStateCopyWithImpl<$Res>
    implements _$QueueLeftCopyWith<$Res> {
  __$QueueLeftCopyWithImpl(_QueueLeft _value, $Res Function(_QueueLeft) _then)
      : super(_value, (v) => _then(v as _QueueLeft));

  @override
  _QueueLeft get _value => super._value as _QueueLeft;
}

/// @nodoc

class _$_QueueLeft implements _QueueLeft {
  const _$_QueueLeft();

  @override
  String toString() {
    return 'QueueDetailsState.queueLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QueueLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueModel queue, bool editable) queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
  }) {
    return queueLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
  }) {
    return queueLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    required TResult orElse(),
  }) {
    if (queueLeft != null) {
      return queueLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueOpened value) queueOpened,
    required TResult Function(_QueueLeft value) queueLeft,
    required TResult Function(_QueueFreezed value) queueFreezed,
  }) {
    return queueLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
  }) {
    return queueLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    required TResult orElse(),
  }) {
    if (queueLeft != null) {
      return queueLeft(this);
    }
    return orElse();
  }
}

abstract class _QueueLeft implements QueueDetailsState {
  const factory _QueueLeft() = _$_QueueLeft;
}

/// @nodoc
abstract class _$QueueFreezedCopyWith<$Res> {
  factory _$QueueFreezedCopyWith(
          _QueueFreezed value, $Res Function(_QueueFreezed) then) =
      __$QueueFreezedCopyWithImpl<$Res>;
}

/// @nodoc
class __$QueueFreezedCopyWithImpl<$Res>
    extends _$QueueDetailsStateCopyWithImpl<$Res>
    implements _$QueueFreezedCopyWith<$Res> {
  __$QueueFreezedCopyWithImpl(
      _QueueFreezed _value, $Res Function(_QueueFreezed) _then)
      : super(_value, (v) => _then(v as _QueueFreezed));

  @override
  _QueueFreezed get _value => super._value as _QueueFreezed;
}

/// @nodoc

class _$_QueueFreezed implements _QueueFreezed {
  const _$_QueueFreezed();

  @override
  String toString() {
    return 'QueueDetailsState.queueFreezed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QueueFreezed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueModel queue, bool editable) queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
  }) {
    return queueFreezed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
  }) {
    return queueFreezed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue, bool editable)? queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    required TResult orElse(),
  }) {
    if (queueFreezed != null) {
      return queueFreezed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueOpened value) queueOpened,
    required TResult Function(_QueueLeft value) queueLeft,
    required TResult Function(_QueueFreezed value) queueFreezed,
  }) {
    return queueFreezed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
  }) {
    return queueFreezed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    required TResult orElse(),
  }) {
    if (queueFreezed != null) {
      return queueFreezed(this);
    }
    return orElse();
  }
}

abstract class _QueueFreezed implements QueueDetailsState {
  const factory _QueueFreezed() = _$_QueueFreezed;
}
