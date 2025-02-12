import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';

/// ProductState is a state to store the products.
class ProductState {
  /// The products
  List<Product> _products = [];

  /// Get the products
  /// @return the products
  ///
  List<Product> get products => _products;

  /// Set the products
  /// @param products the products
  ///
  void setProducts(List<Product> products) {
    _products = products;
  }
}
