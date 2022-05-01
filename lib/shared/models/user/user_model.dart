import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
@CopyWith()
class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.expenses,
    required this.isActive,
  });

  @HiveField(0)
  @JsonKey(name: 'user_id')
  int id;
  @HiveField(1)
  @JsonKey(name: 'user')
  String name;
  @HiveField(2)
  double expenses;
  @HiveField(3)
  @JsonKey(name: 'is_active')
  bool isActive;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
