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

  _LeaveQueue leaveQueue() {
    return const _LeaveQueue();
  }

  _LoadRequested loadRequested(
      {required int id, required int hash_code, required bool checkCache}) {
    return _LoadRequested(
      id: id,
      hash_code: hash_code,
      checkCache: checkCache,
    );
  }

  _InviteUser inviteUser() {
    return const _InviteUser();
  }

  _FreezeQueue freezeQueue() {
    return const _FreezeQueue();
  }

  _UnfreezeQueue unfreezeQueue() {
    return const _UnfreezeQueue();
  }

  _UpdateQueue updateQueue() {
    return const _UpdateQueue();
  }

  _AddProgress addProgress(double value) {
    return _AddProgress(
      value,
    );
  }

  _EditQueue editQueue() {
    return const _EditQueue();
  }

  _CancelEdits cancelEdits() {
    return const _CancelEdits();
  }

  _SubmitEdits submitEdits(QueueDetailsModel updatedQueueDetails) {
    return _SubmitEdits(
      updatedQueueDetails,
    );
  }
}

/// @nodoc
const $QueueDetailsEvent = _$QueueDetailsEventTearOff();

/// @nodoc
mixin _$QueueDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
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
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return leaveQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return leaveQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
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
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return leaveQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return leaveQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
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
abstract class _$LoadRequestedCopyWith<$Res> {
  factory _$LoadRequestedCopyWith(
          _LoadRequested value, $Res Function(_LoadRequested) then) =
      __$LoadRequestedCopyWithImpl<$Res>;
  $Res call({int id, int hash_code, bool checkCache});
}

/// @nodoc
class __$LoadRequestedCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$LoadRequestedCopyWith<$Res> {
  __$LoadRequestedCopyWithImpl(
      _LoadRequested _value, $Res Function(_LoadRequested) _then)
      : super(_value, (v) => _then(v as _LoadRequested));

  @override
  _LoadRequested get _value => super._value as _LoadRequested;

  @override
  $Res call({
    Object? id = freezed,
    Object? hash_code = freezed,
    Object? checkCache = freezed,
  }) {
    return _then(_LoadRequested(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hash_code: hash_code == freezed
          ? _value.hash_code
          : hash_code // ignore: cast_nullable_to_non_nullable
              as int,
      checkCache: checkCache == freezed
          ? _value.checkCache
          : checkCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadRequested implements _LoadRequested {
  const _$_LoadRequested(
      {required this.id, required this.hash_code, required this.checkCache});

  @override
  final int id;
  @override
  final int hash_code;
  @override
  final bool checkCache;

  @override
  String toString() {
    return 'QueueDetailsEvent.loadRequested(id: $id, hash_code: $hash_code, checkCache: $checkCache)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadRequested &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.hash_code, hash_code) &&
            const DeepCollectionEquality()
                .equals(other.checkCache, checkCache));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(hash_code),
      const DeepCollectionEquality().hash(checkCache));

  @JsonKey(ignore: true)
  @override
  _$LoadRequestedCopyWith<_LoadRequested> get copyWith =>
      __$LoadRequestedCopyWithImpl<_LoadRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return loadRequested(id, hash_code, checkCache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return loadRequested?.call(id, hash_code, checkCache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(id, hash_code, checkCache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadRequested implements QueueDetailsEvent {
  const factory _LoadRequested(
      {required int id,
      required int hash_code,
      required bool checkCache}) = _$_LoadRequested;

  int get id;
  int get hash_code;
  bool get checkCache;
  @JsonKey(ignore: true)
  _$LoadRequestedCopyWith<_LoadRequested> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return inviteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return inviteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
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
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return inviteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return inviteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
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
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return freezeQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return freezeQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
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
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return freezeQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return freezeQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
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
abstract class _$UnfreezeQueueCopyWith<$Res> {
  factory _$UnfreezeQueueCopyWith(
          _UnfreezeQueue value, $Res Function(_UnfreezeQueue) then) =
      __$UnfreezeQueueCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnfreezeQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$UnfreezeQueueCopyWith<$Res> {
  __$UnfreezeQueueCopyWithImpl(
      _UnfreezeQueue _value, $Res Function(_UnfreezeQueue) _then)
      : super(_value, (v) => _then(v as _UnfreezeQueue));

  @override
  _UnfreezeQueue get _value => super._value as _UnfreezeQueue;
}

/// @nodoc

class _$_UnfreezeQueue implements _UnfreezeQueue {
  const _$_UnfreezeQueue();

  @override
  String toString() {
    return 'QueueDetailsEvent.unfreezeQueue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnfreezeQueue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return unfreezeQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return unfreezeQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) {
    if (unfreezeQueue != null) {
      return unfreezeQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return unfreezeQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return unfreezeQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
    required TResult orElse(),
  }) {
    if (unfreezeQueue != null) {
      return unfreezeQueue(this);
    }
    return orElse();
  }
}

abstract class _UnfreezeQueue implements QueueDetailsEvent {
  const factory _UnfreezeQueue() = _$_UnfreezeQueue;
}

/// @nodoc
abstract class _$UpdateQueueCopyWith<$Res> {
  factory _$UpdateQueueCopyWith(
          _UpdateQueue value, $Res Function(_UpdateQueue) then) =
      __$UpdateQueueCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$UpdateQueueCopyWith<$Res> {
  __$UpdateQueueCopyWithImpl(
      _UpdateQueue _value, $Res Function(_UpdateQueue) _then)
      : super(_value, (v) => _then(v as _UpdateQueue));

  @override
  _UpdateQueue get _value => super._value as _UpdateQueue;
}

/// @nodoc

class _$_UpdateQueue implements _UpdateQueue {
  const _$_UpdateQueue();

  @override
  String toString() {
    return 'QueueDetailsEvent.updateQueue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateQueue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return updateQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return updateQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) {
    if (updateQueue != null) {
      return updateQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return updateQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return updateQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
    required TResult orElse(),
  }) {
    if (updateQueue != null) {
      return updateQueue(this);
    }
    return orElse();
  }
}

abstract class _UpdateQueue implements QueueDetailsEvent {
  const factory _UpdateQueue() = _$_UpdateQueue;
}

/// @nodoc
abstract class _$AddProgressCopyWith<$Res> {
  factory _$AddProgressCopyWith(
          _AddProgress value, $Res Function(_AddProgress) then) =
      __$AddProgressCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$AddProgressCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$AddProgressCopyWith<$Res> {
  __$AddProgressCopyWithImpl(
      _AddProgress _value, $Res Function(_AddProgress) _then)
      : super(_value, (v) => _then(v as _AddProgress));

  @override
  _AddProgress get _value => super._value as _AddProgress;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AddProgress(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AddProgress implements _AddProgress {
  const _$_AddProgress(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'QueueDetailsEvent.addProgress(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddProgress &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$AddProgressCopyWith<_AddProgress> get copyWith =>
      __$AddProgressCopyWithImpl<_AddProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return addProgress(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return addProgress?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) {
    if (addProgress != null) {
      return addProgress(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return addProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return addProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
    required TResult orElse(),
  }) {
    if (addProgress != null) {
      return addProgress(this);
    }
    return orElse();
  }
}

abstract class _AddProgress implements QueueDetailsEvent {
  const factory _AddProgress(double value) = _$_AddProgress;

  double get value;
  @JsonKey(ignore: true)
  _$AddProgressCopyWith<_AddProgress> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return editQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return editQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
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
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return editQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return editQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
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
abstract class _$CancelEditsCopyWith<$Res> {
  factory _$CancelEditsCopyWith(
          _CancelEdits value, $Res Function(_CancelEdits) then) =
      __$CancelEditsCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelEditsCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$CancelEditsCopyWith<$Res> {
  __$CancelEditsCopyWithImpl(
      _CancelEdits _value, $Res Function(_CancelEdits) _then)
      : super(_value, (v) => _then(v as _CancelEdits));

  @override
  _CancelEdits get _value => super._value as _CancelEdits;
}

/// @nodoc

class _$_CancelEdits implements _CancelEdits {
  const _$_CancelEdits();

  @override
  String toString() {
    return 'QueueDetailsEvent.cancelEdits()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelEdits);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return cancelEdits();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return cancelEdits?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) {
    if (cancelEdits != null) {
      return cancelEdits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return cancelEdits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return cancelEdits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
    required TResult orElse(),
  }) {
    if (cancelEdits != null) {
      return cancelEdits(this);
    }
    return orElse();
  }
}

abstract class _CancelEdits implements QueueDetailsEvent {
  const factory _CancelEdits() = _$_CancelEdits;
}

/// @nodoc
abstract class _$SubmitEditsCopyWith<$Res> {
  factory _$SubmitEditsCopyWith(
          _SubmitEdits value, $Res Function(_SubmitEdits) then) =
      __$SubmitEditsCopyWithImpl<$Res>;
  $Res call({QueueDetailsModel updatedQueueDetails});
}

/// @nodoc
class __$SubmitEditsCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res>
    implements _$SubmitEditsCopyWith<$Res> {
  __$SubmitEditsCopyWithImpl(
      _SubmitEdits _value, $Res Function(_SubmitEdits) _then)
      : super(_value, (v) => _then(v as _SubmitEdits));

  @override
  _SubmitEdits get _value => super._value as _SubmitEdits;

  @override
  $Res call({
    Object? updatedQueueDetails = freezed,
  }) {
    return _then(_SubmitEdits(
      updatedQueueDetails == freezed
          ? _value.updatedQueueDetails
          : updatedQueueDetails // ignore: cast_nullable_to_non_nullable
              as QueueDetailsModel,
    ));
  }
}

/// @nodoc

class _$_SubmitEdits implements _SubmitEdits {
  const _$_SubmitEdits(this.updatedQueueDetails);

  @override
  final QueueDetailsModel updatedQueueDetails;

  @override
  String toString() {
    return 'QueueDetailsEvent.submitEdits(updatedQueueDetails: $updatedQueueDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitEdits &&
            const DeepCollectionEquality()
                .equals(other.updatedQueueDetails, updatedQueueDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedQueueDetails));

  @JsonKey(ignore: true)
  @override
  _$SubmitEditsCopyWith<_SubmitEdits> get copyWith =>
      __$SubmitEditsCopyWithImpl<_SubmitEdits>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaveQueue,
    required TResult Function(int id, int hash_code, bool checkCache)
        loadRequested,
    required TResult Function() inviteUser,
    required TResult Function() freezeQueue,
    required TResult Function() unfreezeQueue,
    required TResult Function() updateQueue,
    required TResult Function(double value) addProgress,
    required TResult Function() editQueue,
    required TResult Function() cancelEdits,
    required TResult Function(QueueDetailsModel updatedQueueDetails)
        submitEdits,
  }) {
    return submitEdits(updatedQueueDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
  }) {
    return submitEdits?.call(updatedQueueDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaveQueue,
    TResult Function(int id, int hash_code, bool checkCache)? loadRequested,
    TResult Function()? inviteUser,
    TResult Function()? freezeQueue,
    TResult Function()? unfreezeQueue,
    TResult Function()? updateQueue,
    TResult Function(double value)? addProgress,
    TResult Function()? editQueue,
    TResult Function()? cancelEdits,
    TResult Function(QueueDetailsModel updatedQueueDetails)? submitEdits,
    required TResult orElse(),
  }) {
    if (submitEdits != null) {
      return submitEdits(updatedQueueDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaveQueue value) leaveQueue,
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_InviteUser value) inviteUser,
    required TResult Function(_FreezeQueue value) freezeQueue,
    required TResult Function(_UnfreezeQueue value) unfreezeQueue,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_AddProgress value) addProgress,
    required TResult Function(_EditQueue value) editQueue,
    required TResult Function(_CancelEdits value) cancelEdits,
    required TResult Function(_SubmitEdits value) submitEdits,
  }) {
    return submitEdits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
  }) {
    return submitEdits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaveQueue value)? leaveQueue,
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_InviteUser value)? inviteUser,
    TResult Function(_FreezeQueue value)? freezeQueue,
    TResult Function(_UnfreezeQueue value)? unfreezeQueue,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_AddProgress value)? addProgress,
    TResult Function(_EditQueue value)? editQueue,
    TResult Function(_CancelEdits value)? cancelEdits,
    TResult Function(_SubmitEdits value)? submitEdits,
    required TResult orElse(),
  }) {
    if (submitEdits != null) {
      return submitEdits(this);
    }
    return orElse();
  }
}

abstract class _SubmitEdits implements QueueDetailsEvent {
  const factory _SubmitEdits(QueueDetailsModel updatedQueueDetails) =
      _$_SubmitEdits;

  QueueDetailsModel get updatedQueueDetails;
  @JsonKey(ignore: true)
  _$SubmitEditsCopyWith<_SubmitEdits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueueDetailsStateTearOff {
  const _$QueueDetailsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _QueueOpened queueOpened(QueueDetailsModel queueDetails, bool editable) {
    return _QueueOpened(
      queueDetails,
      editable,
    );
  }

  _QueueLeft queueLeft() {
    return const _QueueLeft();
  }

  _QueueFreezed queueFreezed() {
    return const _QueueFreezed();
  }

  _QueueUnfreezed queueUnfreezed() {
    return const _QueueUnfreezed();
  }
}

/// @nodoc
const $QueueDetailsState = _$QueueDetailsStateTearOff();

/// @nodoc
mixin _$QueueDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueDetailsModel queueDetails, bool editable)
        queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
    required TResult Function() queueUnfreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueOpened value) queueOpened,
    required TResult Function(_QueueLeft value) queueLeft,
    required TResult Function(_QueueFreezed value) queueFreezed,
    required TResult Function(_QueueUnfreezed value) queueUnfreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
    required TResult Function(QueueDetailsModel queueDetails, bool editable)
        queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
    required TResult Function() queueUnfreezed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
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
    required TResult Function(_QueueUnfreezed value) queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
  $Res call({QueueDetailsModel queueDetails, bool editable});
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
    Object? queueDetails = freezed,
    Object? editable = freezed,
  }) {
    return _then(_QueueOpened(
      queueDetails == freezed
          ? _value.queueDetails
          : queueDetails // ignore: cast_nullable_to_non_nullable
              as QueueDetailsModel,
      editable == freezed
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QueueOpened implements _QueueOpened {
  const _$_QueueOpened(this.queueDetails, this.editable);

  @override
  final QueueDetailsModel queueDetails;
  @override
  final bool editable;

  @override
  String toString() {
    return 'QueueDetailsState.queueOpened(queueDetails: $queueDetails, editable: $editable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueueOpened &&
            const DeepCollectionEquality()
                .equals(other.queueDetails, queueDetails) &&
            const DeepCollectionEquality().equals(other.editable, editable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(queueDetails),
      const DeepCollectionEquality().hash(editable));

  @JsonKey(ignore: true)
  @override
  _$QueueOpenedCopyWith<_QueueOpened> get copyWith =>
      __$QueueOpenedCopyWithImpl<_QueueOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueDetailsModel queueDetails, bool editable)
        queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
    required TResult Function() queueUnfreezed,
  }) {
    return queueOpened(queueDetails, editable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
  }) {
    return queueOpened?.call(queueDetails, editable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
    required TResult orElse(),
  }) {
    if (queueOpened != null) {
      return queueOpened(queueDetails, editable);
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
    required TResult Function(_QueueUnfreezed value) queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
    required TResult orElse(),
  }) {
    if (queueOpened != null) {
      return queueOpened(this);
    }
    return orElse();
  }
}

abstract class _QueueOpened implements QueueDetailsState {
  const factory _QueueOpened(QueueDetailsModel queueDetails, bool editable) =
      _$_QueueOpened;

  QueueDetailsModel get queueDetails;
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
    required TResult Function(QueueDetailsModel queueDetails, bool editable)
        queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
    required TResult Function() queueUnfreezed,
  }) {
    return queueLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
  }) {
    return queueLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
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
    required TResult Function(_QueueUnfreezed value) queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
    required TResult Function(QueueDetailsModel queueDetails, bool editable)
        queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
    required TResult Function() queueUnfreezed,
  }) {
    return queueFreezed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
  }) {
    return queueFreezed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
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
    required TResult Function(_QueueUnfreezed value) queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
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

/// @nodoc
abstract class _$QueueUnfreezedCopyWith<$Res> {
  factory _$QueueUnfreezedCopyWith(
          _QueueUnfreezed value, $Res Function(_QueueUnfreezed) then) =
      __$QueueUnfreezedCopyWithImpl<$Res>;
}

/// @nodoc
class __$QueueUnfreezedCopyWithImpl<$Res>
    extends _$QueueDetailsStateCopyWithImpl<$Res>
    implements _$QueueUnfreezedCopyWith<$Res> {
  __$QueueUnfreezedCopyWithImpl(
      _QueueUnfreezed _value, $Res Function(_QueueUnfreezed) _then)
      : super(_value, (v) => _then(v as _QueueUnfreezed));

  @override
  _QueueUnfreezed get _value => super._value as _QueueUnfreezed;
}

/// @nodoc

class _$_QueueUnfreezed implements _QueueUnfreezed {
  const _$_QueueUnfreezed();

  @override
  String toString() {
    return 'QueueDetailsState.queueUnfreezed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QueueUnfreezed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueDetailsModel queueDetails, bool editable)
        queueOpened,
    required TResult Function() queueLeft,
    required TResult Function() queueFreezed,
    required TResult Function() queueUnfreezed,
  }) {
    return queueUnfreezed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
  }) {
    return queueUnfreezed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueDetailsModel queueDetails, bool editable)?
        queueOpened,
    TResult Function()? queueLeft,
    TResult Function()? queueFreezed,
    TResult Function()? queueUnfreezed,
    required TResult orElse(),
  }) {
    if (queueUnfreezed != null) {
      return queueUnfreezed();
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
    required TResult Function(_QueueUnfreezed value) queueUnfreezed,
  }) {
    return queueUnfreezed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
  }) {
    return queueUnfreezed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueOpened value)? queueOpened,
    TResult Function(_QueueLeft value)? queueLeft,
    TResult Function(_QueueFreezed value)? queueFreezed,
    TResult Function(_QueueUnfreezed value)? queueUnfreezed,
    required TResult orElse(),
  }) {
    if (queueUnfreezed != null) {
      return queueUnfreezed(this);
    }
    return orElse();
  }
}

abstract class _QueueUnfreezed implements QueueDetailsState {
  const factory _QueueUnfreezed() = _$_QueueUnfreezed;
}
