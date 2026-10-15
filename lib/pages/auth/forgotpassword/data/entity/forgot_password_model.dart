import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_model.freezed.dart';
part 'forgot_password_model.g.dart';

@freezed
abstract class ForgotPasswordModel with _$ForgotPasswordModel {
  const factory ForgotPasswordModel({


    @JsonKey(name: 'code') @Default(0) int code,
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _ForgotPasswordModel;

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) => _$ForgotPasswordModelFromJson(json);
}
