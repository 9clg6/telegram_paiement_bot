import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.local_model.freezed.dart';
part 'product.local_model.g.dart';

/// ProductsLocalModel is a model that represents the products.
@freezed
class ProductsLocalModel with _$ProductsLocalModel {
  /// Constructor
  /// @param products the products
  ///
  factory ProductsLocalModel({
    required List<ProductLocalModel> products,
  }) = _ProductsLocalModel;

  /// From json
  /// @param json the json
  /// @return the products local model
  ///
  factory ProductsLocalModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsLocalModelFromJson(json);
}

/// ProductLocalModel is a model that represents the product.
@freezed
class ProductLocalModel with _$ProductLocalModel {
  /// Constructor
  /// @param name Name
  /// @param products Products
  /// @param options Options
  /// @param price Price
  ///
  factory ProductLocalModel({
    String? name,
    List<ProductLocalModel>? products,
    List<ProductLocalModel>? options,
    double? price,
  }) = _ProductLocalModel;

  /// From json
  /// @param json the json
  /// @return the product remote model
  ///
  factory ProductLocalModel.fromJson(Map<String, dynamic> json) =>
      _$ProductLocalModelFromJson(json);
}
