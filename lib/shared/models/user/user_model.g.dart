// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelCWProxy {
  UserModel expenses(double expenses);

  UserModel id(int id);

  UserModel isActive(bool isActive);

  UserModel name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    double? expenses,
    int? id,
    bool? isActive,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModel.copyWith.fieldName(...)`
class _$UserModelCWProxyImpl implements _$UserModelCWProxy {
  final UserModel _value;

  const _$UserModelCWProxyImpl(this._value);

  @override
  UserModel expenses(double expenses) => this(expenses: expenses);

  @override
  UserModel id(int id) => this(id: id);

  @override
  UserModel isActive(bool isActive) => this(isActive: isActive);

  @override
  UserModel name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    Object? expenses = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return UserModel(
      expenses: expenses == const $CopyWithPlaceholder() || expenses == null
          ? _value.expenses
          // ignore: cast_nullable_to_non_nullable
          : expenses as double,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $UserModelCopyWith on UserModel {
  /// Returns a callable class that can be used as follows: `instanceOfclass UserModel.name.copyWith(...)` or like so:`instanceOfclass UserModel.name.copyWith.fieldName(...)`.
  _$UserModelCWProxy get copyWith => _$UserModelCWProxyImpl(this);
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 1;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      id: fields[0] as int,
      name: fields[1] as String,
      expenses: fields[2] as double,
      isActive: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.expenses)
      ..writeByte(3)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['user_id'] as int,
      name: json['user'] as String,
      expenses: (json['expenses'] as num).toDouble(),
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_id': instance.id,
      'user': instance.name,
      'expenses': instance.expenses,
      'is_active': instance.isActive,
    };
