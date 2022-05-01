// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
class _$TaskModelTearOff {
  const _$TaskModelTearOff();

  _TaskModel call(
      {@JsonKey(name: 'queue_id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'is_important') bool? isImportant,
      @JsonKey(name: 'track_expenses') required bool trackExpenses,
      @JsonKey(name: 'hash_code') required int hash}) {
    return _TaskModel(
      id: id,
      name: name,
      color: color,
      isImportant: isImportant,
      trackExpenses: trackExpenses,
      hash: hash,
    );
  }

  TaskModel fromJson(Map<String, Object?> json) {
    return TaskModel.fromJson(json);
  }
}

/// @nodoc
const $TaskModel = _$TaskModelTearOff();

/// @nodoc
mixin _$TaskModel {
  @JsonKey(name: 'queue_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_important')
  bool? get isImportant => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_expenses')
  bool get trackExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'hash_code')
  int get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'queue_id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'is_important') bool? isImportant,
      @JsonKey(name: 'track_expenses') bool trackExpenses,
      @JsonKey(name: 'hash_code') int hash});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res> implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  final TaskModel _value;
  // ignore: unused_field
  final $Res Function(TaskModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? isImportant = freezed,
    Object? trackExpenses = freezed,
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      isImportant: isImportant == freezed
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool?,
      trackExpenses: trackExpenses == freezed
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$TaskModelCopyWith(
          _TaskModel value, $Res Function(_TaskModel) then) =
      __$TaskModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'queue_id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'is_important') bool? isImportant,
      @JsonKey(name: 'track_expenses') bool trackExpenses,
      @JsonKey(name: 'hash_code') int hash});
}

/// @nodoc
class __$TaskModelCopyWithImpl<$Res> extends _$TaskModelCopyWithImpl<$Res>
    implements _$TaskModelCopyWith<$Res> {
  __$TaskModelCopyWithImpl(_TaskModel _value, $Res Function(_TaskModel) _then)
      : super(_value, (v) => _then(v as _TaskModel));

  @override
  _TaskModel get _value => super._value as _TaskModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? isImportant = freezed,
    Object? trackExpenses = freezed,
    Object? hash = freezed,
  }) {
    return _then(_TaskModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      isImportant: isImportant == freezed
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool?,
      trackExpenses: trackExpenses == freezed
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {@JsonKey(name: 'queue_id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'is_important') this.isImportant,
      @JsonKey(name: 'track_expenses') required this.trackExpenses,
      @JsonKey(name: 'hash_code') required this.hash});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  @JsonKey(name: 'queue_id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'color')
  final String color;
  @override
  @JsonKey(name: 'is_important')
  final bool? isImportant;
  @override
  @JsonKey(name: 'track_expenses')
  final bool trackExpenses;
  @override
  @JsonKey(name: 'hash_code')
  final int hash;

  @override
  String toString() {
    return 'TaskModel(id: $id, name: $name, color: $color, isImportant: $isImportant, trackExpenses: $trackExpenses, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.isImportant, isImportant) &&
            const DeepCollectionEquality()
                .equals(other.trackExpenses, trackExpenses) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(isImportant),
      const DeepCollectionEquality().hash(trackExpenses),
      const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  _$TaskModelCopyWith<_TaskModel> get copyWith =>
      __$TaskModelCopyWithImpl<_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(this);
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {@JsonKey(name: 'queue_id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'is_important') bool? isImportant,
      @JsonKey(name: 'track_expenses') required bool trackExpenses,
      @JsonKey(name: 'hash_code') required int hash}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  @JsonKey(name: 'queue_id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'color')
  String get color;
  @override
  @JsonKey(name: 'is_important')
  bool? get isImportant;
  @override
  @JsonKey(name: 'track_expenses')
  bool get trackExpenses;
  @override
  @JsonKey(name: 'hash_code')
  int get hash;
  @override
  @JsonKey(ignore: true)
  _$TaskModelCopyWith<_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
