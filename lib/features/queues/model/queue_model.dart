import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

part 'queue_model.freezed.dart';
part 'queue_model.g.dart';

@freezed
class QueueModel with _$QueueModel {
  const factory QueueModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'color') required String color,
    @JsonKey(name: 'current_user') required UserModel crrentUser,
    @JsonKey(name: 'participants') required List<UserModel> participants,
    @JsonKey(name: 'track_expenses') required bool trackExpenses,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_admin') required bool isAdmin,
    @JsonKey(name: 'link') required String link,
  }) = _QueueModel;

  factory QueueModel.fromJson(Map<String, dynamic> json) =>
      _$QueueModelFromJson(json);
}
