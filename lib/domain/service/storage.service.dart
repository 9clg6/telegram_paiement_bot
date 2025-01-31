import 'dart:convert';

import 'package:hive/hive.dart';

/// StorageService is a service that allows you to store and retrieve data from the secure storage. 
class StorageService {
  /// The box name
  static const String _boxName = 'app_storage';

  /// The encrypted key
  static const String _encryptedKey = 'encrypted_key';

  /// The key
  final String _key;

  /// Get the key
  /// @return the key
  /// 
  String get key => _key;

  /// Constructor
  /// @param key the key
  /// 
  StorageService._(this._key);

  /// Inject the storage service
  /// @return the storage service
  /// 
  static Future<StorageService> inject() async {
    // Initialiser Hive avec un répertoire
    Hive.init('storage');
    final box = await Hive.openBox(_boxName);
    late final String key;

    if (!box.containsKey(_encryptedKey)) {
      final List<int> bytes = Hive.generateSecureKey();
      key = base64Encode(bytes);
      await box.put(_encryptedKey, key);
    } else {
      key = box.get(_encryptedKey);
    }
    print('💾 Storage Service initialisé');
    return StorageService._(key);
  }
} 