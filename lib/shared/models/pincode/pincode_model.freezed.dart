// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pincode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PincodeModel _$PincodeModelFromJson(Map<String, dynamic> json) {
  return _PincodeModel.fromJson(json);
}

/// @nodoc
class _$PincodeModelTearOff {
  const _$PincodeModelTearOff();

  _PincodeModel call(
      {@JsonKey(name: 'pin_code') required String pincode,
      @JsonKey(name: 'qr_code') required String qrcode}) {
    return _PincodeModel(
      pincode: pincode,
      qrcode: qrcode,
    );
  }

  PincodeModel fromJson(Map<String, Object?> json) {
    return PincodeModel.fromJson(json);
  }
}

/// @nodoc
const $PincodeModel = _$PincodeModelTearOff();

/// @nodoc
mixin _$PincodeModel {
  @JsonKey(name: 'pin_code')
  String get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_code')
  String get qrcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PincodeModelCopyWith<PincodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeModelCopyWith<$Res> {
  factory $PincodeModelCopyWith(
          PincodeModel value, $Res Function(PincodeModel) then) =
      _$PincodeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pin_code') String pincode,
      @JsonKey(name: 'qr_code') String qrcode});
}

/// @nodoc
class _$PincodeModelCopyWithImpl<$Res> implements $PincodeModelCopyWith<$Res> {
  _$PincodeModelCopyWithImpl(this._value, this._then);

  final PincodeModel _value;
  // ignore: unused_field
  final $Res Function(PincodeModel) _then;

  @override
  $Res call({
    Object? pincode = freezed,
    Object? qrcode = freezed,
  }) {
    return _then(_value.copyWith(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PincodeModelCopyWith<$Res>
    implements $PincodeModelCopyWith<$Res> {
  factory _$PincodeModelCopyWith(
          _PincodeModel value, $Res Function(_PincodeModel) then) =
      __$PincodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pin_code') String pincode,
      @JsonKey(name: 'qr_code') String qrcode});
}

/// @nodoc
class __$PincodeModelCopyWithImpl<$Res> extends _$PincodeModelCopyWithImpl<$Res>
    implements _$PincodeModelCopyWith<$Res> {
  __$PincodeModelCopyWithImpl(
      _PincodeModel _value, $Res Function(_PincodeModel) _then)
      : super(_value, (v) => _then(v as _PincodeModel));

  @override
  _PincodeModel get _value => super._value as _PincodeModel;

  @override
  $Res call({
    Object? pincode = freezed,
    Object? qrcode = freezed,
  }) {
    return _then(_PincodeModel(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PincodeModel implements _PincodeModel {
  const _$_PincodeModel(
      {@JsonKey(name: 'pin_code') required this.pincode,
      @JsonKey(name: 'qr_code') required this.qrcode});

  factory _$_PincodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PincodeModelFromJson(json);

  @override
  @JsonKey(name: 'pin_code')
  final String pincode;
  @override
  @JsonKey(name: 'qr_code')
  final String qrcode;

  @override
  String toString() {
    return 'PincodeModel(pincode: $pincode, qrcode: $qrcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PincodeModel &&
            const DeepCollectionEquality().equals(other.pincode, pincode) &&
            const DeepCollectionEquality().equals(other.qrcode, qrcode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pincode),
      const DeepCollectionEquality().hash(qrcode));

  @JsonKey(ignore: true)
  @override
  _$PincodeModelCopyWith<_PincodeModel> get copyWith =>
      __$PincodeModelCopyWithImpl<_PincodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PincodeModelToJson(this);
  }
}

abstract class _PincodeModel implements PincodeModel {
  const factory _PincodeModel(
      {@JsonKey(name: 'pin_code') required String pincode,
      @JsonKey(name: 'qr_code') required String qrcode}) = _$_PincodeModel;

  factory _PincodeModel.fromJson(Map<String, dynamic> json) =
      _$_PincodeModel.fromJson;

  @override
  @JsonKey(name: 'pin_code')
  String get pincode;
  @override
  @JsonKey(name: 'qr_code')
  String get qrcode;
  @override
  @JsonKey(ignore: true)
  _$PincodeModelCopyWith<_PincodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
