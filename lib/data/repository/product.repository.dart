import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';

/// ProductRepository is an interface that represents the product repository.
abstract class ProductRepository {
  /// Get the products.
  /// @return the products
  ///
  Future<List<Product>> getProducts();
}
