import 'dart:convert';

import 'package:telegram_paiement_bot/data/data_source/local/authentication.local.data_source.dart';
import 'package:telegram_paiement_bot/data/model/local/authentication.local.model.dart';
import 'package:telegram_paiement_bot/foundation/interface/storage.interface.dart';

/// [AuthenticationLocalDataSourceImpl]
class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  /// The storage service.
  final StorageInterface<String> _storage;

  /// The auth key.
  static const String _authKey = 'auth_token';

  /// Default cosntructor
  ///
  AuthenticationLocalDataSourceImpl(this._storage);

  /// save auth token
  /// 
  @override
  Future<void> saveAuthToken(String token) async {
    final AuthenticationLocalModel model = AuthenticationLocalModel(token: token);
    await _storage.set(
      _authKey,
      jsonEncode(model.toJson()),
    );
  }

  /// delete auth token
  /// 
  @override
  Future<void> deleteAuthToken() async {
    await _storage.remove(_authKey);
  }

  /// get auth token
  /// 
  @override
  Future<AuthenticationLocalModel?> getAuthToken() async {
    final String token = await _storage.get(_authKey);
    if (token.isEmpty) return null;

    return AuthenticationLocalModel.fromJson(
      jsonDecode(token) as Map<String, dynamic>,
    );
  }
}
