// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
class _$TokenModelTearOff {
  const _$TokenModelTearOff();

  _TokenModel call(
      {@JsonKey(name: 'token') required String token,
      @JsonKey(name: 'user_id') required int userId}) {
    return _TokenModel(
      token: token,
      userId: userId,
    );
  }

  TokenModel fromJson(Map<String, Object?> json) {
    return TokenModel.fromJson(json);
  }
}

/// @nodoc
const $TokenModel = _$TokenModelTearOff();

/// @nodoc
mixin _$TokenModel {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenModelCopyWith<TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res> implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

  final TokenModel _value;
  // ignore: unused_field
  final $Res Function(TokenModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TokenModelCopyWith<$Res> implements $TokenModelCopyWith<$Res> {
  factory _$TokenModelCopyWith(
          _TokenModel value, $Res Function(_TokenModel) then) =
      __$TokenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$TokenModelCopyWithImpl<$Res> extends _$TokenModelCopyWithImpl<$Res>
    implements _$TokenModelCopyWith<$Res> {
  __$TokenModelCopyWithImpl(
      _TokenModel _value, $Res Function(_TokenModel) _then)
      : super(_value, (v) => _then(v as _TokenModel));

  @override
  _TokenModel get _value => super._value as _TokenModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
  }) {
    return _then(_TokenModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenModel implements _TokenModel {
  const _$_TokenModel(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$_TokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_TokenModelFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'TokenModel(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenModel &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      __$TokenModelCopyWithImpl<_TokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenModelToJson(this);
  }
}

abstract class _TokenModel implements TokenModel {
  const factory _TokenModel(
      {@JsonKey(name: 'token') required String token,
      @JsonKey(name: 'user_id') required int userId}) = _$_TokenModel;

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$_TokenModel.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
