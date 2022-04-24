// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueDetailsModel _$$_QueueDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_QueueDetailsModel(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      crrentUser: UserModel.fromJson(json['on_duty'] as Map<String, dynamic>),
      isOnDuty: json['is_on_duty'] as bool,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackExpenses: json['track_expenses'] as bool,
      isActive: json['is_active'] as bool,
      isAdmin: json['is_admin'] as bool,
    );

Map<String, dynamic> _$$_QueueDetailsModelToJson(
        _$_QueueDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'on_duty': instance.crrentUser,
      'is_on_duty': instance.isOnDuty,
      'participants': instance.participants,
      'track_expenses': instance.trackExpenses,
      'is_active': instance.isActive,
      'is_admin': instance.isAdmin,
    };
