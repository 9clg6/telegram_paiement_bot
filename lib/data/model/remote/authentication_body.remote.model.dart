import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_body.remote.model.freezed.dart';
part 'authentication_body.remote.model.g.dart';

/// AuthenticationBodyRemoteModel is a model that represents the authentication body.
@freezed
class AuthenticationBody with _$AuthenticationBody {
  /// Constructor
  /// @param email the email
  /// @param password the password
  /// 
  const factory AuthenticationBody({
    required String email,
    required String password,
  }) = _AuthenticationBody;

  /// From json
  /// @param json the json
  /// @return the authentication body
  /// 
  factory AuthenticationBody.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationBodyFromJson(json);
}
