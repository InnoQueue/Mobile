// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queue_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueDetailsModel _$QueueDetailsModelFromJson(Map<String, dynamic> json) {
  return _QueueDetailsModel.fromJson(json);
}

/// @nodoc
class _$QueueDetailsModelTearOff {
  const _$QueueDetailsModelTearOff();

  _QueueDetailsModel call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'on_duty') required UserModel crrentUser,
      @JsonKey(name: 'is_on_duty') required bool isOnDuty,
      @JsonKey(name: 'participants') required List<UserModel> participants,
      @JsonKey(name: 'track_expenses') required bool trackExpenses,
      @JsonKey(name: 'is_active') required bool isActive,
      @JsonKey(name: 'is_admin') required bool isAdmin}) {
    return _QueueDetailsModel(
      id: id,
      name: name,
      color: color,
      crrentUser: crrentUser,
      isOnDuty: isOnDuty,
      participants: participants,
      trackExpenses: trackExpenses,
      isActive: isActive,
      isAdmin: isAdmin,
    );
  }

  QueueDetailsModel fromJson(Map<String, Object?> json) {
    return QueueDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $QueueDetailsModel = _$QueueDetailsModelTearOff();

/// @nodoc
mixin _$QueueDetailsModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_duty')
  UserModel get crrentUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_on_duty')
  bool get isOnDuty => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants')
  List<UserModel> get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_expenses')
  bool get trackExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  bool get isAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueDetailsModelCopyWith<QueueDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueDetailsModelCopyWith<$Res> {
  factory $QueueDetailsModelCopyWith(
          QueueDetailsModel value, $Res Function(QueueDetailsModel) then) =
      _$QueueDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'on_duty') UserModel crrentUser,
      @JsonKey(name: 'is_on_duty') bool isOnDuty,
      @JsonKey(name: 'participants') List<UserModel> participants,
      @JsonKey(name: 'track_expenses') bool trackExpenses,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_admin') bool isAdmin});

  $UserModelCopyWith<$Res> get crrentUser;
}

/// @nodoc
class _$QueueDetailsModelCopyWithImpl<$Res>
    implements $QueueDetailsModelCopyWith<$Res> {
  _$QueueDetailsModelCopyWithImpl(this._value, this._then);

  final QueueDetailsModel _value;
  // ignore: unused_field
  final $Res Function(QueueDetailsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? crrentUser = freezed,
    Object? isOnDuty = freezed,
    Object? participants = freezed,
    Object? trackExpenses = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
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
      crrentUser: crrentUser == freezed
          ? _value.crrentUser
          : crrentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isOnDuty: isOnDuty == freezed
          ? _value.isOnDuty
          : isOnDuty // ignore: cast_nullable_to_non_nullable
              as bool,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      trackExpenses: trackExpenses == freezed
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get crrentUser {
    return $UserModelCopyWith<$Res>(_value.crrentUser, (value) {
      return _then(_value.copyWith(crrentUser: value));
    });
  }
}

/// @nodoc
abstract class _$QueueDetailsModelCopyWith<$Res>
    implements $QueueDetailsModelCopyWith<$Res> {
  factory _$QueueDetailsModelCopyWith(
          _QueueDetailsModel value, $Res Function(_QueueDetailsModel) then) =
      __$QueueDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'on_duty') UserModel crrentUser,
      @JsonKey(name: 'is_on_duty') bool isOnDuty,
      @JsonKey(name: 'participants') List<UserModel> participants,
      @JsonKey(name: 'track_expenses') bool trackExpenses,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_admin') bool isAdmin});

  @override
  $UserModelCopyWith<$Res> get crrentUser;
}

/// @nodoc
class __$QueueDetailsModelCopyWithImpl<$Res>
    extends _$QueueDetailsModelCopyWithImpl<$Res>
    implements _$QueueDetailsModelCopyWith<$Res> {
  __$QueueDetailsModelCopyWithImpl(
      _QueueDetailsModel _value, $Res Function(_QueueDetailsModel) _then)
      : super(_value, (v) => _then(v as _QueueDetailsModel));

  @override
  _QueueDetailsModel get _value => super._value as _QueueDetailsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? crrentUser = freezed,
    Object? isOnDuty = freezed,
    Object? participants = freezed,
    Object? trackExpenses = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_QueueDetailsModel(
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
      crrentUser: crrentUser == freezed
          ? _value.crrentUser
          : crrentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isOnDuty: isOnDuty == freezed
          ? _value.isOnDuty
          : isOnDuty // ignore: cast_nullable_to_non_nullable
              as bool,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      trackExpenses: trackExpenses == freezed
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueDetailsModel implements _QueueDetailsModel {
  const _$_QueueDetailsModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'on_duty') required this.crrentUser,
      @JsonKey(name: 'is_on_duty') required this.isOnDuty,
      @JsonKey(name: 'participants') required this.participants,
      @JsonKey(name: 'track_expenses') required this.trackExpenses,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'is_admin') required this.isAdmin});

  factory _$_QueueDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_QueueDetailsModelFromJson(json);

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
  @JsonKey(name: 'on_duty')
  final UserModel crrentUser;
  @override
  @JsonKey(name: 'is_on_duty')
  final bool isOnDuty;
  @override
  @JsonKey(name: 'participants')
  final List<UserModel> participants;
  @override
  @JsonKey(name: 'track_expenses')
  final bool trackExpenses;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'is_admin')
  final bool isAdmin;

  @override
  String toString() {
    return 'QueueDetailsModel(id: $id, name: $name, color: $color, crrentUser: $crrentUser, isOnDuty: $isOnDuty, participants: $participants, trackExpenses: $trackExpenses, isActive: $isActive, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueueDetailsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.crrentUser, crrentUser) &&
            const DeepCollectionEquality().equals(other.isOnDuty, isOnDuty) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality()
                .equals(other.trackExpenses, trackExpenses) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(crrentUser),
      const DeepCollectionEquality().hash(isOnDuty),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(trackExpenses),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(isAdmin));

  @JsonKey(ignore: true)
  @override
  _$QueueDetailsModelCopyWith<_QueueDetailsModel> get copyWith =>
      __$QueueDetailsModelCopyWithImpl<_QueueDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueDetailsModelToJson(this);
  }
}

abstract class _QueueDetailsModel implements QueueDetailsModel {
  const factory _QueueDetailsModel(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'on_duty') required UserModel crrentUser,
      @JsonKey(name: 'is_on_duty') required bool isOnDuty,
      @JsonKey(name: 'participants') required List<UserModel> participants,
      @JsonKey(name: 'track_expenses') required bool trackExpenses,
      @JsonKey(name: 'is_active') required bool isActive,
      @JsonKey(name: 'is_admin') required bool isAdmin}) = _$_QueueDetailsModel;

  factory _QueueDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_QueueDetailsModel.fromJson;

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
  @JsonKey(name: 'on_duty')
  UserModel get crrentUser;
  @override
  @JsonKey(name: 'is_on_duty')
  bool get isOnDuty;
  @override
  @JsonKey(name: 'participants')
  List<UserModel> get participants;
  @override
  @JsonKey(name: 'track_expenses')
  bool get trackExpenses;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'is_admin')
  bool get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$QueueDetailsModelCopyWith<_QueueDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
