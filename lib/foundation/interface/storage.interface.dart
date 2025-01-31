/// Storage to manage secret data securely locally
abstract class StorageInterface<T> {
  /// Get all the values from secure storage
  /// @return the list of values
  /// 
  Future<List<T>> getAll();

  /// Get a value from secure storage
  /// @param key the key
  /// @return the value
  /// 
  Future<T> get(String key);

  /// Set a value in secure storage
  /// @param key the key
  /// @param value the value
  /// 
  Future<void> set(String key, T value);

  /// Remove a value from secure storage
  /// @param key the key
  /// 
  Future<void> remove(String key);

  /// Check if the storage contains [key]
  /// @param key the key
  /// @return true if the storage contains the key, false otherwise
  /// 
  Future<bool> contains(String key);

  /// Delete all the data
  /// 
  Future<void> deleteAll();

  /// Clear box without deleting it
  /// 
  Future<void> clearAll();
}
