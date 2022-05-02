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

  _NotificationModel call(
      {@JsonKey(name: 'message_type') required String msgType,
      @JsonKey(name: 'participant_id') required int participantId,
      @JsonKey(name: 'participant_name') required String participantName,
      @JsonKey(name: 'queue_id') required int queueId,
      @JsonKey(name: 'queue_name') required String queueName,
      @JsonKey(name: 'timestamp') required DateTime timestamp}) {
    return _NotificationModel(
      msgType: msgType,
      participantId: participantId,
      participantName: participantName,
      queueId: queueId,
      queueName: queueName,
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
  @JsonKey(name: 'message_type')
  String get msgType => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_id')
  int get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_name')
  String get participantName => throw _privateConstructorUsedError;
  @JsonKey(name: 'queue_id')
  int get queueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'queue_name')
  String get queueName => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  DateTime get timestamp => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'message_type') String msgType,
      @JsonKey(name: 'participant_id') int participantId,
      @JsonKey(name: 'participant_name') String participantName,
      @JsonKey(name: 'queue_id') int queueId,
      @JsonKey(name: 'queue_name') String queueName,
      @JsonKey(name: 'timestamp') DateTime timestamp});
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
    Object? msgType = freezed,
    Object? participantId = freezed,
    Object? participantName = freezed,
    Object? queueId = freezed,
    Object? queueName = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      msgType: msgType == freezed
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String,
      participantId: participantId == freezed
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
      participantName: participantName == freezed
          ? _value.participantName
          : participantName // ignore: cast_nullable_to_non_nullable
              as String,
      queueId: queueId == freezed
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
      queueName: queueName == freezed
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $Res call(
      {@JsonKey(name: 'message_type') String msgType,
      @JsonKey(name: 'participant_id') int participantId,
      @JsonKey(name: 'participant_name') String participantName,
      @JsonKey(name: 'queue_id') int queueId,
      @JsonKey(name: 'queue_name') String queueName,
      @JsonKey(name: 'timestamp') DateTime timestamp});
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
    Object? msgType = freezed,
    Object? participantId = freezed,
    Object? participantName = freezed,
    Object? queueId = freezed,
    Object? queueName = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_NotificationModel(
      msgType: msgType == freezed
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String,
      participantId: participantId == freezed
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
      participantName: participantName == freezed
          ? _value.participantName
          : participantName // ignore: cast_nullable_to_non_nullable
              as String,
      queueId: queueId == freezed
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
      queueName: queueName == freezed
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel extends _NotificationModel
    with DiagnosticableTreeMixin {
  _$_NotificationModel(
      {@JsonKey(name: 'message_type') required this.msgType,
      @JsonKey(name: 'participant_id') required this.participantId,
      @JsonKey(name: 'participant_name') required this.participantName,
      @JsonKey(name: 'queue_id') required this.queueId,
      @JsonKey(name: 'queue_name') required this.queueName,
      @JsonKey(name: 'timestamp') required this.timestamp})
      : super._();

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  @override
  @JsonKey(name: 'message_type')
  final String msgType;
  @override
  @JsonKey(name: 'participant_id')
  final int participantId;
  @override
  @JsonKey(name: 'participant_name')
  final String participantName;
  @override
  @JsonKey(name: 'queue_id')
  final int queueId;
  @override
  @JsonKey(name: 'queue_name')
  final String queueName;
  @override
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModel(msgType: $msgType, participantId: $participantId, participantName: $participantName, queueId: $queueId, queueName: $queueName, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModel'))
      ..add(DiagnosticsProperty('msgType', msgType))
      ..add(DiagnosticsProperty('participantId', participantId))
      ..add(DiagnosticsProperty('participantName', participantName))
      ..add(DiagnosticsProperty('queueId', queueId))
      ..add(DiagnosticsProperty('queueName', queueName))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationModel &&
            const DeepCollectionEquality().equals(other.msgType, msgType) &&
            const DeepCollectionEquality()
                .equals(other.participantId, participantId) &&
            const DeepCollectionEquality()
                .equals(other.participantName, participantName) &&
            const DeepCollectionEquality().equals(other.queueId, queueId) &&
            const DeepCollectionEquality().equals(other.queueName, queueName) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(msgType),
      const DeepCollectionEquality().hash(participantId),
      const DeepCollectionEquality().hash(participantName),
      const DeepCollectionEquality().hash(queueId),
      const DeepCollectionEquality().hash(queueName),
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
  factory _NotificationModel(
          {@JsonKey(name: 'message_type') required String msgType,
          @JsonKey(name: 'participant_id') required int participantId,
          @JsonKey(name: 'participant_name') required String participantName,
          @JsonKey(name: 'queue_id') required int queueId,
          @JsonKey(name: 'queue_name') required String queueName,
          @JsonKey(name: 'timestamp') required DateTime timestamp}) =
      _$_NotificationModel;
  _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  @JsonKey(name: 'message_type')
  String get msgType;
  @override
  @JsonKey(name: 'participant_id')
  int get participantId;
  @override
  @JsonKey(name: 'participant_name')
  String get participantName;
  @override
  @JsonKey(name: 'queue_id')
  int get queueId;
  @override
  @JsonKey(name: 'queue_name')
  String get queueName;
  @override
  @JsonKey(name: 'timestamp')
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
