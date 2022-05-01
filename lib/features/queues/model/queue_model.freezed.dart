// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueModel _$QueueModelFromJson(Map<String, dynamic> json) {
  return _QueueModel.fromJson(json);
}

/// @nodoc
class _$QueueModelTearOff {
  const _$QueueModelTearOff();

  _QueueModel call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'hash_code') required int hash}) {
    return _QueueModel(
      id: id,
      name: name,
      color: color,
      hash: hash,
    );
  }

  QueueModel fromJson(Map<String, Object?> json) {
    return QueueModel.fromJson(json);
  }
}

/// @nodoc
const $QueueModel = _$QueueModelTearOff();

/// @nodoc
mixin _$QueueModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'hash_code')
  int get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueModelCopyWith<QueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueModelCopyWith<$Res> {
  factory $QueueModelCopyWith(
          QueueModel value, $Res Function(QueueModel) then) =
      _$QueueModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'hash_code') int hash});
}

/// @nodoc
class _$QueueModelCopyWithImpl<$Res> implements $QueueModelCopyWith<$Res> {
  _$QueueModelCopyWithImpl(this._value, this._then);

  final QueueModel _value;
  // ignore: unused_field
  final $Res Function(QueueModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
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
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$QueueModelCopyWith<$Res> implements $QueueModelCopyWith<$Res> {
  factory _$QueueModelCopyWith(
          _QueueModel value, $Res Function(_QueueModel) then) =
      __$QueueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'hash_code') int hash});
}

/// @nodoc
class __$QueueModelCopyWithImpl<$Res> extends _$QueueModelCopyWithImpl<$Res>
    implements _$QueueModelCopyWith<$Res> {
  __$QueueModelCopyWithImpl(
      _QueueModel _value, $Res Function(_QueueModel) _then)
      : super(_value, (v) => _then(v as _QueueModel));

  @override
  _QueueModel get _value => super._value as _QueueModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? hash = freezed,
  }) {
    return _then(_QueueModel(
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
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueModel implements _QueueModel {
  const _$_QueueModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'hash_code') required this.hash});

  factory _$_QueueModel.fromJson(Map<String, dynamic> json) =>
      _$$_QueueModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'color')
  final String color;
  @override
  @JsonKey(name: 'hash_code')
  final int hash;

  @override
  String toString() {
    return 'QueueModel(id: $id, name: $name, color: $color, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueueModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  _$QueueModelCopyWith<_QueueModel> get copyWith =>
      __$QueueModelCopyWithImpl<_QueueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueModelToJson(this);
  }
}

abstract class _QueueModel implements QueueModel {
  const factory _QueueModel(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'hash_code') required int hash}) = _$_QueueModel;

  factory _QueueModel.fromJson(Map<String, dynamic> json) =
      _$_QueueModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'color')
  String get color;
  @override
  @JsonKey(name: 'hash_code')
  int get hash;
  @override
  @JsonKey(ignore: true)
  _$QueueModelCopyWith<_QueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
