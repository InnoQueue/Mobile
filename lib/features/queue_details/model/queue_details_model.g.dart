// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_details_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueDetailsModelCWProxy {
  QueueDetailsModel color(String color);

  QueueDetailsModel currentUser(UserModel currentUser);

  QueueDetailsModel hash(int hash);

  QueueDetailsModel id(int id);

  QueueDetailsModel isActive(bool isActive);

  QueueDetailsModel isAdmin(bool isAdmin);

  QueueDetailsModel isOnDuty(bool isOnDuty);

  QueueDetailsModel name(String name);

  QueueDetailsModel participants(List<UserModel> participants);

  QueueDetailsModel trackExpenses(bool trackExpenses);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueDetailsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueDetailsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueDetailsModel call({
    String? color,
    UserModel? currentUser,
    int? hash,
    int? id,
    bool? isActive,
    bool? isAdmin,
    bool? isOnDuty,
    String? name,
    List<UserModel>? participants,
    bool? trackExpenses,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueDetailsModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueDetailsModel.copyWith.fieldName(...)`
class _$QueueDetailsModelCWProxyImpl implements _$QueueDetailsModelCWProxy {
  final QueueDetailsModel _value;

  const _$QueueDetailsModelCWProxyImpl(this._value);

  @override
  QueueDetailsModel color(String color) => this(color: color);

  @override
  QueueDetailsModel currentUser(UserModel currentUser) =>
      this(currentUser: currentUser);

  @override
  QueueDetailsModel hash(int hash) => this(hash: hash);

  @override
  QueueDetailsModel id(int id) => this(id: id);

  @override
  QueueDetailsModel isActive(bool isActive) => this(isActive: isActive);

  @override
  QueueDetailsModel isAdmin(bool isAdmin) => this(isAdmin: isAdmin);

  @override
  QueueDetailsModel isOnDuty(bool isOnDuty) => this(isOnDuty: isOnDuty);

  @override
  QueueDetailsModel name(String name) => this(name: name);

  @override
  QueueDetailsModel participants(List<UserModel> participants) =>
      this(participants: participants);

  @override
  QueueDetailsModel trackExpenses(bool trackExpenses) =>
      this(trackExpenses: trackExpenses);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueDetailsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueDetailsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueDetailsModel call({
    Object? color = const $CopyWithPlaceholder(),
    Object? currentUser = const $CopyWithPlaceholder(),
    Object? hash = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isAdmin = const $CopyWithPlaceholder(),
    Object? isOnDuty = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? participants = const $CopyWithPlaceholder(),
    Object? trackExpenses = const $CopyWithPlaceholder(),
  }) {
    return QueueDetailsModel(
      color: color == const $CopyWithPlaceholder() || color == null
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as String,
      currentUser:
          currentUser == const $CopyWithPlaceholder() || currentUser == null
              ? _value.currentUser
              // ignore: cast_nullable_to_non_nullable
              : currentUser as UserModel,
      hash: hash == const $CopyWithPlaceholder() || hash == null
          ? _value.hash
          // ignore: cast_nullable_to_non_nullable
          : hash as int,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      isAdmin: isAdmin == const $CopyWithPlaceholder() || isAdmin == null
          ? _value.isAdmin
          // ignore: cast_nullable_to_non_nullable
          : isAdmin as bool,
      isOnDuty: isOnDuty == const $CopyWithPlaceholder() || isOnDuty == null
          ? _value.isOnDuty
          // ignore: cast_nullable_to_non_nullable
          : isOnDuty as bool,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      participants:
          participants == const $CopyWithPlaceholder() || participants == null
              ? _value.participants
              // ignore: cast_nullable_to_non_nullable
              : participants as List<UserModel>,
      trackExpenses:
          trackExpenses == const $CopyWithPlaceholder() || trackExpenses == null
              ? _value.trackExpenses
              // ignore: cast_nullable_to_non_nullable
              : trackExpenses as bool,
    );
  }
}

extension $QueueDetailsModelCopyWith on QueueDetailsModel {
  /// Returns a callable class that can be used as follows: `instanceOfclass QueueDetailsModel.name.copyWith(...)` or like so:`instanceOfclass QueueDetailsModel.name.copyWith.fieldName(...)`.
  _$QueueDetailsModelCWProxy get copyWith =>
      _$QueueDetailsModelCWProxyImpl(this);
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QueueDetailsModelAdapter extends TypeAdapter<QueueDetailsModel> {
  @override
  final int typeId = 0;

  @override
  QueueDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QueueDetailsModel(
      id: fields[0] as int,
      name: fields[1] as String,
      color: fields[2] as String,
      currentUser: fields[3] as UserModel,
      isOnDuty: fields[4] as bool,
      participants: (fields[5] as List).cast<UserModel>(),
      trackExpenses: fields[6] as bool,
      isActive: fields[7] as bool,
      isAdmin: fields[8] as bool,
      hash: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, QueueDetailsModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.color)
      ..writeByte(3)
      ..write(obj.currentUser)
      ..writeByte(4)
      ..write(obj.isOnDuty)
      ..writeByte(5)
      ..write(obj.participants)
      ..writeByte(6)
      ..write(obj.trackExpenses)
      ..writeByte(7)
      ..write(obj.isActive)
      ..writeByte(8)
      ..write(obj.isAdmin)
      ..writeByte(9)
      ..write(obj.hash);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueueDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueDetailsModel _$QueueDetailsModelFromJson(Map<String, dynamic> json) =>
    QueueDetailsModel(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      currentUser: UserModel.fromJson(json['on_duty'] as Map<String, dynamic>),
      isOnDuty: json['is_on_duty'] as bool,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackExpenses: json['track_expenses'] as bool,
      isActive: json['is_active'] as bool,
      isAdmin: json['is_admin'] as bool,
      hash: json['hash_code'] as int,
    );

Map<String, dynamic> _$QueueDetailsModelToJson(QueueDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'on_duty': instance.currentUser,
      'is_on_duty': instance.isOnDuty,
      'participants': instance.participants,
      'track_expenses': instance.trackExpenses,
      'is_active': instance.isActive,
      'is_admin': instance.isAdmin,
      'hash_code': instance.hash,
    };
