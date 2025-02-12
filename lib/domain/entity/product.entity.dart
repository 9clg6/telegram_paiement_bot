import 'package:telegram_paiement_bot/data/model/local/product.local_model.dart';

/// Product entity
class Product {
  /// Name
  final String? name;

  /// Price
  final double? price;

  /// Products
  final List<Product>? products;

  /// Options
  final List<Product>? options;

  /// Constructor
  /// @param name Name
  /// @param price Price
  /// @param products Products
  /// @param options Options
  ///
  Product(
    this.name,
    this.products,
    this.options,
    this.price,
  );

  /// From local model
  /// @param productLocalModel the product local model
  /// @return the product
  ///
  static Product fromLocalModel(ProductLocalModel productLocalModel) {
    return Product(
      productLocalModel.name,
      productLocalModel.products
          ?.map((productLocalModel) => Product.fromLocalModel(productLocalModel))
          .toList(),
      productLocalModel.options
          ?.map((productLocalModel) => Product.fromLocalModel(productLocalModel))
          .toList(),
      productLocalModel.price,
    );
  }
}
