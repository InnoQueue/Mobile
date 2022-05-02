// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      msgType: json['message_type'] as String,
      participantId: json['participant_id'] as int,
      participantName: json['participant_name'] as String,
      queueId: json['queue_id'] as int,
      queueName: json['queue_name'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'message_type': instance.msgType,
      'participant_id': instance.participantId,
      'participant_name': instance.participantName,
      'queue_id': instance.queueId,
      'queue_name': instance.queueName,
      'timestamp': instance.timestamp.toIso8601String(),
    };
