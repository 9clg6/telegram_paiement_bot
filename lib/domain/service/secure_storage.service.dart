import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

/// SecureStorageService is a service that allows you to store and retrieve data from the secure storage.
class SecureStorageService {
  /// Name of the encrypted key
  static const String _encryptedKey = r'encrypted_key';

  /// Key of the storage
  final String _key;

  /// Getter for the key
  String get key => _key;

  /// Constructor
  /// @param key the key
  /// 
  SecureStorageService._(this._key);

  /// Static method to inject [SecureStorageService]
  /// @param storage the storage
  /// @return the secure storage service
  /// 
  static Future<SecureStorageService> inject(
    FlutterSecureStorage storage,
  ) async {
    late final String key;

    if (!(await storage.containsKey(key: _encryptedKey))) {
      final List<int> bytes = Hive.generateSecureKey();
      key = base64Encode(bytes);
      await storage.write(key: _encryptedKey, value: key);
    } else {
      key = (await storage.read(key: _encryptedKey))!;
    }
    SecureStorageService service = SecureStorageService._(key);

    return service;
  }
}
