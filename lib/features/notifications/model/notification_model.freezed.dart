// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
class _$NotificationModelTearOff {
  const _$NotificationModelTearOff();

  _NotificationModel call({String? message, DateTime? timestamp}) {
    return _NotificationModel(
      message: message,
      timestamp: timestamp,
    );
  }

  NotificationModel fromJson(Map<String, Object?> json) {
    return NotificationModel.fromJson(json);
  }
}

/// @nodoc
const $NotificationModel = _$NotificationModelTearOff();

/// @nodoc
mixin _$NotificationModel {
  String? get message => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res>;
  $Res call({String? message, DateTime? timestamp});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  final NotificationModel _value;
  // ignore: unused_field
  final $Res Function(NotificationModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(
          _NotificationModel value, $Res Function(_NotificationModel) then) =
      __$NotificationModelCopyWithImpl<$Res>;
  @override
  $Res call({String? message, DateTime? timestamp});
}

/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(
      _NotificationModel _value, $Res Function(_NotificationModel) _then)
      : super(_value, (v) => _then(v as _NotificationModel));

  @override
  _NotificationModel get _value => super._value as _NotificationModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_NotificationModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel extends _NotificationModel
    with DiagnosticableTreeMixin {
  _$_NotificationModel({this.message, this.timestamp}) : super._();

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  @override
  final String? message;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModel(message: $message, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModel'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationModelToJson(this);
  }
}

abstract class _NotificationModel extends NotificationModel {
  factory _NotificationModel({String? message, DateTime? timestamp}) =
      _$_NotificationModel;
  _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  String? get message;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
