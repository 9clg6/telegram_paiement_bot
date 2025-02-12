import 'package:telegram_paiement_bot/data/repository/product.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';

/// GetProductsUseCase is a use case that gets the products.
class GetProductsUseCase {
  /// ProductRepository
  final ProductRepository productRepository;

  /// Constructor
  /// @param productRepository the product repository
  ///
  GetProductsUseCase(this.productRepository);

  /// Execute the use case.
  /// @return the products  
  ///
  Future<List<Product>> execute() async {
    return productRepository.getProducts();
  }
}
