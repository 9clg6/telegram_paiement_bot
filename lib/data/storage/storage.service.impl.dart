import 'package:hive/hive.dart';
import 'package:telegram_paiement_bot/foundation/interface/storage.interface.dart';

/// StorageServiceImpl is a service that allows you to store and retrieve data from the secure storage.
class StorageServiceImpl implements StorageInterface<String> {
  /// The box name
  static const String _boxName = 'app_storage';

  /// The box
  late final Box<String> _box;

  /// Constructor
  /// 
  StorageServiceImpl._();

  /// Inject the storage service
  /// @return the storage service
  /// 
  static Future<StorageServiceImpl> inject() async {
    final instance = StorageServiceImpl._();
    Hive.init('storage');
    instance._box = await Hive.openBox<String>(_boxName);
    return instance;
  }

  /// Get all the values
  /// @return the values
  /// 
  @override
  Future<List<String>> getAll() async {
    return _box.values.toList();
  }

  /// Get a value
  /// @param key the key
  /// @return the value
  /// 
  @override
  Future<String> get(String key) async {
    return _box.get(key) ?? '';
  }

  /// Set a value
  /// @param key the key
  /// @param value the value
  /// 
  @override
  Future<void> set(String key, String value) async {
    await _box.put(key, value);
  }

  /// Remove a value
  /// @param key the key
  /// 
  @override
  Future<void> remove(String key) async {
    await _box.delete(key);
  }

  /// Contains a value
  /// @param key the key
  /// @return true if the value is contained, false otherwise
  /// 
  @override
  Future<bool> contains(String key) async {
    return _box.containsKey(key);
  }

  /// Delete all the values
  /// 
  @override
  Future<void> deleteAll() async {
    await _box.deleteFromDisk();
  }

  /// Clear all the values
  /// 
  @override
  Future<void> clearAll() async {
    await _box.clear();
  }
} 