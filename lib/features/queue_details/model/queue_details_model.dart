import 'package:hive/hive.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'queue_details_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
@CopyWith()
class QueueDetailsModel {
  QueueDetailsModel({
    required this.id,
    required this.name,
    required this.color,
    required this.currentUser,
    required this.isOnDuty,
    required this.participants,
    required this.trackExpenses,
    required this.isActive,
    required this.isAdmin,
    required this.hash,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String color;
  @HiveField(3)
  @JsonKey(name: 'on_duty')
  UserModel currentUser;
  @HiveField(4)
  @JsonKey(name: 'is_on_duty')
  bool isOnDuty;
  @HiveField(5)
  List<UserModel> participants;
  @HiveField(6)
  @JsonKey(name: 'track_expenses')
  bool trackExpenses;
  @HiveField(7)
  @JsonKey(name: 'is_active')
  bool isActive;
  @HiveField(8)
  @JsonKey(name: 'is_admin')
  bool isAdmin;
  @HiveField(9)
  @JsonKey(name: 'hash_code')
  int hash;

  factory QueueDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$QueueDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$QueueDetailsModelToJson(this);
}
