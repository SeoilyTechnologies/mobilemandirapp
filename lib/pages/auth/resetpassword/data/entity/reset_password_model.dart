import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.freezed.dart';
part 'reset_password_model.g.dart';

@freezed
abstract class ResetPasswordModel with _$ResetPasswordModel {
  const factory ResetPasswordModel({
    @JsonKey(name: "message") @Default('') String message,
  }) = _ResetPasswordModel;

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) => _$ResetPasswordModelFromJson(json);
}
