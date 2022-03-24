// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      message: json['message'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
