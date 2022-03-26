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
      @JsonKey(name: 'on_duty') required UserModel crrentUser,
      @JsonKey(name: 'participants') required List<UserModel> participants,
      @JsonKey(name: 'track_expenses') required bool trackExpenses,
      @JsonKey(name: 'is_active') required bool isActive,
      @JsonKey(name: 'is_admin') required bool isAdmin,
      @JsonKey(name: 'link') required String link,
      @JsonKey(name: 'is_on_duty') required bool isOnDuty}) {
    return _QueueModel(
      id: id,
      name: name,
      color: color,
      crrentUser: crrentUser,
      participants: participants,
      trackExpenses: trackExpenses,
      isActive: isActive,
      isAdmin: isAdmin,
      link: link,
      isOnDuty: isOnDuty,
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
  @JsonKey(name: 'on_duty')
  UserModel get crrentUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants')
  List<UserModel> get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_expenses')
  bool get trackExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_on_duty')
  bool get isOnDuty => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'on_duty') UserModel crrentUser,
      @JsonKey(name: 'participants') List<UserModel> participants,
      @JsonKey(name: 'track_expenses') bool trackExpenses,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_admin') bool isAdmin,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'is_on_duty') bool isOnDuty});

  $UserModelCopyWith<$Res> get crrentUser;
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
    Object? crrentUser = freezed,
    Object? participants = freezed,
    Object? trackExpenses = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
    Object? link = freezed,
    Object? isOnDuty = freezed,
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
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      isOnDuty: isOnDuty == freezed
          ? _value.isOnDuty
          : isOnDuty // ignore: cast_nullable_to_non_nullable
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
abstract class _$QueueModelCopyWith<$Res> implements $QueueModelCopyWith<$Res> {
  factory _$QueueModelCopyWith(
          _QueueModel value, $Res Function(_QueueModel) then) =
      __$QueueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'on_duty') UserModel crrentUser,
      @JsonKey(name: 'participants') List<UserModel> participants,
      @JsonKey(name: 'track_expenses') bool trackExpenses,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_admin') bool isAdmin,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'is_on_duty') bool isOnDuty});

  @override
  $UserModelCopyWith<$Res> get crrentUser;
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
    Object? crrentUser = freezed,
    Object? participants = freezed,
    Object? trackExpenses = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
    Object? link = freezed,
    Object? isOnDuty = freezed,
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
      crrentUser: crrentUser == freezed
          ? _value.crrentUser
          : crrentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
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
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      isOnDuty: isOnDuty == freezed
          ? _value.isOnDuty
          : isOnDuty // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'on_duty') required this.crrentUser,
      @JsonKey(name: 'participants') required this.participants,
      @JsonKey(name: 'track_expenses') required this.trackExpenses,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'is_admin') required this.isAdmin,
      @JsonKey(name: 'link') required this.link,
      @JsonKey(name: 'is_on_duty') required this.isOnDuty});

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
  @JsonKey(name: 'on_duty')
  final UserModel crrentUser;
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
  @JsonKey(name: 'link')
  final String link;
  @override
  @JsonKey(name: 'is_on_duty')
  final bool isOnDuty;

  @override
  String toString() {
    return 'QueueModel(id: $id, name: $name, color: $color, crrentUser: $crrentUser, participants: $participants, trackExpenses: $trackExpenses, isActive: $isActive, isAdmin: $isAdmin, link: $link, isOnDuty: $isOnDuty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueueModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.crrentUser, crrentUser) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality()
                .equals(other.trackExpenses, trackExpenses) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.isOnDuty, isOnDuty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(crrentUser),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(trackExpenses),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(isAdmin),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(isOnDuty));

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
      @JsonKey(name: 'on_duty') required UserModel crrentUser,
      @JsonKey(name: 'participants') required List<UserModel> participants,
      @JsonKey(name: 'track_expenses') required bool trackExpenses,
      @JsonKey(name: 'is_active') required bool isActive,
      @JsonKey(name: 'is_admin') required bool isAdmin,
      @JsonKey(name: 'link') required String link,
      @JsonKey(name: 'is_on_duty') required bool isOnDuty}) = _$_QueueModel;

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
  @JsonKey(name: 'on_duty')
  UserModel get crrentUser;
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
  @JsonKey(name: 'link')
  String get link;
  @override
  @JsonKey(name: 'is_on_duty')
  bool get isOnDuty;
  @override
  @JsonKey(ignore: true)
  _$QueueModelCopyWith<_QueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
