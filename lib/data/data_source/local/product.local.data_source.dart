import 'package:telegram_paiement_bot/data/model/local/product.local_model.dart';

/// ProductLocalDataSource is an interface that represents the product local data source.
abstract class ProductLocalDataSource {
  /// Get the products.
  /// @return the products
  ///
  Future<List<ProductLocalModel>> getProducts();
}
