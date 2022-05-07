// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const NotificationModel._(); // Added constructor

  factory NotificationModel({
    @JsonKey(name: 'message_type') required String msgType,
    @JsonKey(name: 'participant_id') required int participantId,
    @JsonKey(name: 'participant_name') required String participantName,
    @JsonKey(name: 'queue_id') required int queueId,
    @JsonKey(name: 'queue_name') required String queueName,
    @JsonKey(name: 'timestamp') required DateTime timestamp,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
