import 'package:telegram_paiement_bot/data/data_source/local/product.local.data_source.dart';
import 'package:telegram_paiement_bot/data/model/local/product.local_model.dart';
import 'package:telegram_paiement_bot/data/repository/product.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';

/// ProductRepositoryImpl is an implementation of the ProductRepository interface.
class ProductRepositoryImpl implements ProductRepository {
  /// ProductLocalDataSource
  final ProductLocalDataSource productLocalDataSource;

  /// Constructor
  /// @param productLocalDataSource the product local data source
  ///
  ProductRepositoryImpl(this.productLocalDataSource);

  /// Get the products.
  /// @return the products
  ///
  @override
  Future<List<Product>> getProducts() async {
    final List<ProductLocalModel> productsLocalModel = await productLocalDataSource.getProducts();
    
    return productsLocalModel
        .map((productLocalModel) => Product.fromLocalModel(productLocalModel))
        .toList();
  }
}
