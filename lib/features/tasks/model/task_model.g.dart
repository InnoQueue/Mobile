// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      id: json['queue_id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      isImportant: json['is_important'] as bool?,
      trackExpenses: json['track_expenses'] as bool,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'queue_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'is_important': instance.isImportant,
      'track_expenses': instance.trackExpenses,
    };
