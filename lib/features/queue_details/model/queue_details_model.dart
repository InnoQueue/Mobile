import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

part 'queue_details_model.freezed.dart';
part 'queue_details_model.g.dart';

@freezed
class QueueDetailsModel with _$QueueDetailsModel {
  const factory QueueDetailsModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'color') required String color,
    @JsonKey(name: 'on_duty') required UserModel crrentUser,
    @JsonKey(name: 'is_on_duty') required bool isOnDuty,
    @JsonKey(name: 'participants') required List<UserModel> participants,
    @JsonKey(name: 'track_expenses') required bool trackExpenses,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_admin') required bool isAdmin,
  }) = _QueueDetailsModel;

  factory QueueDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$QueueDetailsModelFromJson(json);
}
