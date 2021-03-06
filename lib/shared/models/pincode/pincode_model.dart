// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pincode_model.freezed.dart';
part 'pincode_model.g.dart';

@freezed
class PincodeModel with _$PincodeModel {
  const factory PincodeModel({
    @JsonKey(name: 'pin_code') required String pincode,
    @JsonKey(name: 'qr_code') required String qrcode,
  }) = _PincodeModel;

  factory PincodeModel.fromJson(Map<String, dynamic> json) =>
      _$PincodeModelFromJson(json);
}
