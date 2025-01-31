import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.local.model.freezed.dart';
part 'authentication.local.model.g.dart';

/// [AuthenticationLocalModel]
@freezed
class AuthenticationLocalModel with _$AuthenticationLocalModel {
  /// Constructor
  /// @param token The token.
  /// 
  const factory AuthenticationLocalModel({required String token}) = _AuthenticationLocalModel;

  /// Convert the model to a json.
  factory AuthenticationLocalModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationLocalModelFromJson(json);
}
