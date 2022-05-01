import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_model.freezed.dart';
part 'queue_model.g.dart';

@freezed
class QueueModel with _$QueueModel {
  const factory QueueModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'color') required String color,
    @JsonKey(name: 'hash_code') required int hash,
  }) = _QueueModel;

  factory QueueModel.fromJson(Map<String, dynamic> json) =>
      _$QueueModelFromJson(json);
}
