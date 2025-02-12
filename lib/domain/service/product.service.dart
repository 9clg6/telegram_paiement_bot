import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/state/product.state.dart';
import 'package:telegram_paiement_bot/usecase/get_products.use_case.dart';

/// ProductService is a service that allows you to get the products.
class ProductService {
  /// The product state
  final ProductState _state = ProductState();

  /// Get the products
  /// @return the products
  ///
  List<Product> get products => _state.products;

  /// The get products use case
  final GetProductsUseCase getProductsUseCase;

  /// The selected product
  Product? selectedProduct;

  /// Constructor
  /// @param getProductsUseCase the get products use case
  ///
  ProductService(this.getProductsUseCase);

  /// Inject the product service
  /// @param getProductsUseCase the get products use case
  /// @return the product service
  ///
  static Future<ProductService> inject(
    GetProductsUseCase getProductsUseCase,
  ) async {
    final service = ProductService(getProductsUseCase);
    await service.loadProducts();

    return service;
  }

  /// Get the products
  ///
  Future<void> loadProducts() async {
    final products = await getProductsUseCase.execute();
    _state.setProducts(products);
  }
}
