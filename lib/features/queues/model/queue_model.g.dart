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
      hash: json['hash_code'] as int,
    );

Map<String, dynamic> _$$_QueueModelToJson(_$_QueueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'hash_code': instance.hash,
    };
