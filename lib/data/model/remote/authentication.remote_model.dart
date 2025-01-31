import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.remote_model.freezed.dart';
part 'authentication.remote_model.g.dart';

/// AuthenticationRemoteModel is a model that represents the authentication.  
@freezed
class AuthenticationRemoteModel with _$AuthenticationRemoteModel {
  /// Constructor
  /// @param token the token
  /// 
  const factory AuthenticationRemoteModel({
    required String token,
  }) = _AuthenticationRemoteModel;

  /// From json
  /// @param json the json
  /// @return the authentication remote model
  /// 
  factory AuthenticationRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationRemoteModelFromJson(json);
}
