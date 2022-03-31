// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'select_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectTasksStateTearOff {
  const _$SelectTasksStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Selected selected(int number) {
    return _Selected(
      number,
    );
  }

  _Unselected unselected() {
    return const _Unselected();
  }

  _Cleared cleared() {
    return const _Cleared();
  }

  _AllSkipped allSkipped() {
    return const _AllSkipped();
  }

  _AllDone allDone() {
    return const _AllDone();
  }
}

/// @nodoc
const $SelectTasksState = _$SelectTasksStateTearOff();

/// @nodoc
mixin _$SelectTasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectTasksStateCopyWith<$Res> {
  factory $SelectTasksStateCopyWith(
          SelectTasksState value, $Res Function(SelectTasksState) then) =
      _$SelectTasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectTasksStateCopyWithImpl<$Res>
    implements $SelectTasksStateCopyWith<$Res> {
  _$SelectTasksStateCopyWithImpl(this._value, this._then);

  final SelectTasksState _value;
  // ignore: unused_field
  final $Res Function(SelectTasksState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SelectTasksStateCopyWithImpl<$Res>
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
    return 'SelectTasksState.initial()';
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
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
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
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SelectTasksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SelectedCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) then) =
      __$SelectedCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$SelectedCopyWithImpl<$Res> extends _$SelectTasksStateCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(_Selected _value, $Res Function(_Selected) _then)
      : super(_value, (v) => _then(v as _Selected));

  @override
  _Selected get _value => super._value as _Selected;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_Selected(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Selected implements _Selected {
  const _$_Selected(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'SelectTasksState.selected(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Selected &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$SelectedCopyWith<_Selected> get copyWith =>
      __$SelectedCopyWithImpl<_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) {
    return selected(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) {
    return selected?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements SelectTasksState {
  const factory _Selected(int number) = _$_Selected;

  int get number;
  @JsonKey(ignore: true)
  _$SelectedCopyWith<_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnselectedCopyWith<$Res> {
  factory _$UnselectedCopyWith(
          _Unselected value, $Res Function(_Unselected) then) =
      __$UnselectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnselectedCopyWithImpl<$Res>
    extends _$SelectTasksStateCopyWithImpl<$Res>
    implements _$UnselectedCopyWith<$Res> {
  __$UnselectedCopyWithImpl(
      _Unselected _value, $Res Function(_Unselected) _then)
      : super(_value, (v) => _then(v as _Unselected));

  @override
  _Unselected get _value => super._value as _Unselected;
}

/// @nodoc

class _$_Unselected implements _Unselected {
  const _$_Unselected();

  @override
  String toString() {
    return 'SelectTasksState.unselected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unselected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) {
    return unselected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) {
    return unselected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) {
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) {
    return unselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class _Unselected implements SelectTasksState {
  const factory _Unselected() = _$_Unselected;
}

/// @nodoc
abstract class _$ClearedCopyWith<$Res> {
  factory _$ClearedCopyWith(_Cleared value, $Res Function(_Cleared) then) =
      __$ClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearedCopyWithImpl<$Res> extends _$SelectTasksStateCopyWithImpl<$Res>
    implements _$ClearedCopyWith<$Res> {
  __$ClearedCopyWithImpl(_Cleared _value, $Res Function(_Cleared) _then)
      : super(_value, (v) => _then(v as _Cleared));

  @override
  _Cleared get _value => super._value as _Cleared;
}

/// @nodoc

class _$_Cleared implements _Cleared {
  const _$_Cleared();

  @override
  String toString() {
    return 'SelectTasksState.cleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Cleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class _Cleared implements SelectTasksState {
  const factory _Cleared() = _$_Cleared;
}

/// @nodoc
abstract class _$AllSkippedCopyWith<$Res> {
  factory _$AllSkippedCopyWith(
          _AllSkipped value, $Res Function(_AllSkipped) then) =
      __$AllSkippedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AllSkippedCopyWithImpl<$Res>
    extends _$SelectTasksStateCopyWithImpl<$Res>
    implements _$AllSkippedCopyWith<$Res> {
  __$AllSkippedCopyWithImpl(
      _AllSkipped _value, $Res Function(_AllSkipped) _then)
      : super(_value, (v) => _then(v as _AllSkipped));

  @override
  _AllSkipped get _value => super._value as _AllSkipped;
}

/// @nodoc

class _$_AllSkipped implements _AllSkipped {
  const _$_AllSkipped();

  @override
  String toString() {
    return 'SelectTasksState.allSkipped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AllSkipped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) {
    return allSkipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) {
    return allSkipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
    required TResult orElse(),
  }) {
    if (allSkipped != null) {
      return allSkipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) {
    return allSkipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) {
    return allSkipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) {
    if (allSkipped != null) {
      return allSkipped(this);
    }
    return orElse();
  }
}

abstract class _AllSkipped implements SelectTasksState {
  const factory _AllSkipped() = _$_AllSkipped;
}

/// @nodoc
abstract class _$AllDoneCopyWith<$Res> {
  factory _$AllDoneCopyWith(_AllDone value, $Res Function(_AllDone) then) =
      __$AllDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$AllDoneCopyWithImpl<$Res> extends _$SelectTasksStateCopyWithImpl<$Res>
    implements _$AllDoneCopyWith<$Res> {
  __$AllDoneCopyWithImpl(_AllDone _value, $Res Function(_AllDone) _then)
      : super(_value, (v) => _then(v as _AllDone));

  @override
  _AllDone get _value => super._value as _AllDone;
}

/// @nodoc

class _$_AllDone implements _AllDone {
  const _$_AllDone();

  @override
  String toString() {
    return 'SelectTasksState.allDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AllDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int number) selected,
    required TResult Function() unselected,
    required TResult Function() cleared,
    required TResult Function() allSkipped,
    required TResult Function() allDone,
  }) {
    return allDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
  }) {
    return allDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int number)? selected,
    TResult Function()? unselected,
    TResult Function()? cleared,
    TResult Function()? allSkipped,
    TResult Function()? allDone,
    required TResult orElse(),
  }) {
    if (allDone != null) {
      return allDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_AllSkipped value) allSkipped,
    required TResult Function(_AllDone value) allDone,
  }) {
    return allDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
  }) {
    return allDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_AllSkipped value)? allSkipped,
    TResult Function(_AllDone value)? allDone,
    required TResult orElse(),
  }) {
    if (allDone != null) {
      return allDone(this);
    }
    return orElse();
  }
}

abstract class _AllDone implements SelectTasksState {
  const factory _AllDone() = _$_AllDone;
}

/// @nodoc
class _$SelectTasksEventTearOff {
  const _$SelectTasksEventTearOff();

  _Select select(int number) {
    return _Select(
      number,
    );
  }

  _Unselect unselect() {
    return const _Unselect();
  }

  _Clear clear() {
    return const _Clear();
  }

  _SkipAll skipAll() {
    return const _SkipAll();
  }

  _SetAllDone setAllDone() {
    return const _SetAllDone();
  }
}

/// @nodoc
const $SelectTasksEvent = _$SelectTasksEventTearOff();

/// @nodoc
mixin _$SelectTasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) select,
    required TResult Function() unselect,
    required TResult Function() clear,
    required TResult Function() skipAll,
    required TResult Function() setAllDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SkipAll value) skipAll,
    required TResult Function(_SetAllDone value) setAllDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectTasksEventCopyWith<$Res> {
  factory $SelectTasksEventCopyWith(
          SelectTasksEvent value, $Res Function(SelectTasksEvent) then) =
      _$SelectTasksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectTasksEventCopyWithImpl<$Res>
    implements $SelectTasksEventCopyWith<$Res> {
  _$SelectTasksEventCopyWithImpl(this._value, this._then);

  final SelectTasksEvent _value;
  // ignore: unused_field
  final $Res Function(SelectTasksEvent) _then;
}

/// @nodoc
abstract class _$SelectCopyWith<$Res> {
  factory _$SelectCopyWith(_Select value, $Res Function(_Select) then) =
      __$SelectCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$SelectCopyWithImpl<$Res> extends _$SelectTasksEventCopyWithImpl<$Res>
    implements _$SelectCopyWith<$Res> {
  __$SelectCopyWithImpl(_Select _value, $Res Function(_Select) _then)
      : super(_value, (v) => _then(v as _Select));

  @override
  _Select get _value => super._value as _Select;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_Select(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'SelectTasksEvent.select(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Select &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$SelectCopyWith<_Select> get copyWith =>
      __$SelectCopyWithImpl<_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) select,
    required TResult Function() unselect,
    required TResult Function() clear,
    required TResult Function() skipAll,
    required TResult Function() setAllDone,
  }) {
    return select(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
  }) {
    return select?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SkipAll value) skipAll,
    required TResult Function(_SetAllDone value) setAllDone,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements SelectTasksEvent {
  const factory _Select(int number) = _$_Select;

  int get number;
  @JsonKey(ignore: true)
  _$SelectCopyWith<_Select> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnselectCopyWith<$Res> {
  factory _$UnselectCopyWith(_Unselect value, $Res Function(_Unselect) then) =
      __$UnselectCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnselectCopyWithImpl<$Res> extends _$SelectTasksEventCopyWithImpl<$Res>
    implements _$UnselectCopyWith<$Res> {
  __$UnselectCopyWithImpl(_Unselect _value, $Res Function(_Unselect) _then)
      : super(_value, (v) => _then(v as _Unselect));

  @override
  _Unselect get _value => super._value as _Unselect;
}

/// @nodoc

class _$_Unselect implements _Unselect {
  const _$_Unselect();

  @override
  String toString() {
    return 'SelectTasksEvent.unselect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unselect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) select,
    required TResult Function() unselect,
    required TResult Function() clear,
    required TResult Function() skipAll,
    required TResult Function() setAllDone,
  }) {
    return unselect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
  }) {
    return unselect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SkipAll value) skipAll,
    required TResult Function(_SetAllDone value) setAllDone,
  }) {
    return unselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
  }) {
    return unselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect(this);
    }
    return orElse();
  }
}

abstract class _Unselect implements SelectTasksEvent {
  const factory _Unselect() = _$_Unselect;
}

/// @nodoc
abstract class _$ClearCopyWith<$Res> {
  factory _$ClearCopyWith(_Clear value, $Res Function(_Clear) then) =
      __$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearCopyWithImpl<$Res> extends _$SelectTasksEventCopyWithImpl<$Res>
    implements _$ClearCopyWith<$Res> {
  __$ClearCopyWithImpl(_Clear _value, $Res Function(_Clear) _then)
      : super(_value, (v) => _then(v as _Clear));

  @override
  _Clear get _value => super._value as _Clear;
}

/// @nodoc

class _$_Clear implements _Clear {
  const _$_Clear();

  @override
  String toString() {
    return 'SelectTasksEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) select,
    required TResult Function() unselect,
    required TResult Function() clear,
    required TResult Function() skipAll,
    required TResult Function() setAllDone,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SkipAll value) skipAll,
    required TResult Function(_SetAllDone value) setAllDone,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements SelectTasksEvent {
  const factory _Clear() = _$_Clear;
}

/// @nodoc
abstract class _$SkipAllCopyWith<$Res> {
  factory _$SkipAllCopyWith(_SkipAll value, $Res Function(_SkipAll) then) =
      __$SkipAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$SkipAllCopyWithImpl<$Res> extends _$SelectTasksEventCopyWithImpl<$Res>
    implements _$SkipAllCopyWith<$Res> {
  __$SkipAllCopyWithImpl(_SkipAll _value, $Res Function(_SkipAll) _then)
      : super(_value, (v) => _then(v as _SkipAll));

  @override
  _SkipAll get _value => super._value as _SkipAll;
}

/// @nodoc

class _$_SkipAll implements _SkipAll {
  const _$_SkipAll();

  @override
  String toString() {
    return 'SelectTasksEvent.skipAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SkipAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) select,
    required TResult Function() unselect,
    required TResult Function() clear,
    required TResult Function() skipAll,
    required TResult Function() setAllDone,
  }) {
    return skipAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
  }) {
    return skipAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
    required TResult orElse(),
  }) {
    if (skipAll != null) {
      return skipAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SkipAll value) skipAll,
    required TResult Function(_SetAllDone value) setAllDone,
  }) {
    return skipAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
  }) {
    return skipAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
    required TResult orElse(),
  }) {
    if (skipAll != null) {
      return skipAll(this);
    }
    return orElse();
  }
}

abstract class _SkipAll implements SelectTasksEvent {
  const factory _SkipAll() = _$_SkipAll;
}

/// @nodoc
abstract class _$SetAllDoneCopyWith<$Res> {
  factory _$SetAllDoneCopyWith(
          _SetAllDone value, $Res Function(_SetAllDone) then) =
      __$SetAllDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetAllDoneCopyWithImpl<$Res>
    extends _$SelectTasksEventCopyWithImpl<$Res>
    implements _$SetAllDoneCopyWith<$Res> {
  __$SetAllDoneCopyWithImpl(
      _SetAllDone _value, $Res Function(_SetAllDone) _then)
      : super(_value, (v) => _then(v as _SetAllDone));

  @override
  _SetAllDone get _value => super._value as _SetAllDone;
}

/// @nodoc

class _$_SetAllDone implements _SetAllDone {
  const _$_SetAllDone();

  @override
  String toString() {
    return 'SelectTasksEvent.setAllDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetAllDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) select,
    required TResult Function() unselect,
    required TResult Function() clear,
    required TResult Function() skipAll,
    required TResult Function() setAllDone,
  }) {
    return setAllDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
  }) {
    return setAllDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? select,
    TResult Function()? unselect,
    TResult Function()? clear,
    TResult Function()? skipAll,
    TResult Function()? setAllDone,
    required TResult orElse(),
  }) {
    if (setAllDone != null) {
      return setAllDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SkipAll value) skipAll,
    required TResult Function(_SetAllDone value) setAllDone,
  }) {
    return setAllDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
  }) {
    return setAllDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_Clear value)? clear,
    TResult Function(_SkipAll value)? skipAll,
    TResult Function(_SetAllDone value)? setAllDone,
    required TResult orElse(),
  }) {
    if (setAllDone != null) {
      return setAllDone(this);
    }
    return orElse();
  }
}

abstract class _SetAllDone implements SelectTasksEvent {
  const factory _SetAllDone() = _$_SetAllDone;
}
