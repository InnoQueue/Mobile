// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueModel _$$_QueueModelFromJson(Map<String, dynamic> json) =>
    _$_QueueModel(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      crrentUser: UserModel.fromJson(json['on_duty'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackExpenses: json['track_expenses'] as bool,
      isActive: json['is_active'] as bool,
      isAdmin: json['is_admin'] as bool,
      link: json['link'] as String,
      isOnDuty: json['is_on_duty'] as bool,
    );

Map<String, dynamic> _$$_QueueModelToJson(_$_QueueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'on_duty': instance.crrentUser,
      'participants': instance.participants,
      'track_expenses': instance.trackExpenses,
      'is_active': instance.isActive,
      'is_admin': instance.isAdmin,
      'link': instance.link,
      'is_on_duty': instance.isOnDuty,
    };
