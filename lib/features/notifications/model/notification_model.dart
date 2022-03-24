import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const NotificationModel._(); // Added constructor
  factory NotificationModel({String? text, DateTime? dateTime}) =
      _NotificationModel;
}
