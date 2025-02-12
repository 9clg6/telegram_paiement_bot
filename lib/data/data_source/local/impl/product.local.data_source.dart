import 'dart:convert';
import 'dart:io';

import 'package:telegram_paiement_bot/data/data_source/local/product.local.data_source.dart';
import 'package:telegram_paiement_bot/data/model/local/product.local_model.dart';

/// ProductLocalDataSourceImpl is an implementation of the ProductLocalDataSource interface.
class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  static const String _fileName = 'assets/products.json';

  /// Constructor
  ///
  ProductLocalDataSourceImpl();

  /// Get the products.
  /// @return the products
  ///
  @override
  Future<List<ProductLocalModel>> getProducts() async {
    final String productsJson = await File(_fileName).readAsString();

    final ProductsLocalModel productsLocalModel =
        ProductsLocalModel.fromJson(jsonDecode(productsJson));

    return productsLocalModel.products;
  }
}
