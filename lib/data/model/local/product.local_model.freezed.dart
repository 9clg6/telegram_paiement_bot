// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsLocalModel _$ProductsLocalModelFromJson(Map<String, dynamic> json) {
  return _ProductsLocalModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsLocalModel {
  List<ProductLocalModel> get products => throw _privateConstructorUsedError;

  /// Serializes this ProductsLocalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsLocalModelCopyWith<ProductsLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsLocalModelCopyWith<$Res> {
  factory $ProductsLocalModelCopyWith(
          ProductsLocalModel value, $Res Function(ProductsLocalModel) then) =
      _$ProductsLocalModelCopyWithImpl<$Res, ProductsLocalModel>;
  @useResult
  $Res call({List<ProductLocalModel> products});
}

/// @nodoc
class _$ProductsLocalModelCopyWithImpl<$Res, $Val extends ProductsLocalModel>
    implements $ProductsLocalModelCopyWith<$Res> {
  _$ProductsLocalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductLocalModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsLocalModelImplCopyWith<$Res>
    implements $ProductsLocalModelCopyWith<$Res> {
  factory _$$ProductsLocalModelImplCopyWith(_$ProductsLocalModelImpl value,
          $Res Function(_$ProductsLocalModelImpl) then) =
      __$$ProductsLocalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductLocalModel> products});
}

/// @nodoc
class __$$ProductsLocalModelImplCopyWithImpl<$Res>
    extends _$ProductsLocalModelCopyWithImpl<$Res, _$ProductsLocalModelImpl>
    implements _$$ProductsLocalModelImplCopyWith<$Res> {
  __$$ProductsLocalModelImplCopyWithImpl(_$ProductsLocalModelImpl _value,
      $Res Function(_$ProductsLocalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsLocalModelImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductLocalModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsLocalModelImpl implements _ProductsLocalModel {
  _$ProductsLocalModelImpl({required final List<ProductLocalModel> products})
      : _products = products;

  factory _$ProductsLocalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsLocalModelImplFromJson(json);

  final List<ProductLocalModel> _products;
  @override
  List<ProductLocalModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsLocalModel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLocalModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductsLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsLocalModelImplCopyWith<_$ProductsLocalModelImpl> get copyWith =>
      __$$ProductsLocalModelImplCopyWithImpl<_$ProductsLocalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsLocalModelImplToJson(
      this,
    );
  }
}

abstract class _ProductsLocalModel implements ProductsLocalModel {
  factory _ProductsLocalModel(
          {required final List<ProductLocalModel> products}) =
      _$ProductsLocalModelImpl;

  factory _ProductsLocalModel.fromJson(Map<String, dynamic> json) =
      _$ProductsLocalModelImpl.fromJson;

  @override
  List<ProductLocalModel> get products;

  /// Create a copy of ProductsLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsLocalModelImplCopyWith<_$ProductsLocalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductLocalModel _$ProductLocalModelFromJson(Map<String, dynamic> json) {
  return _ProductLocalModel.fromJson(json);
}

/// @nodoc
mixin _$ProductLocalModel {
  String? get name => throw _privateConstructorUsedError;
  List<ProductLocalModel>? get products => throw _privateConstructorUsedError;
  List<ProductLocalModel>? get options => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  /// Serializes this ProductLocalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductLocalModelCopyWith<ProductLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLocalModelCopyWith<$Res> {
  factory $ProductLocalModelCopyWith(
          ProductLocalModel value, $Res Function(ProductLocalModel) then) =
      _$ProductLocalModelCopyWithImpl<$Res, ProductLocalModel>;
  @useResult
  $Res call(
      {String? name,
      List<ProductLocalModel>? products,
      List<ProductLocalModel>? options,
      double? price});
}

/// @nodoc
class _$ProductLocalModelCopyWithImpl<$Res, $Val extends ProductLocalModel>
    implements $ProductLocalModelCopyWith<$Res> {
  _$ProductLocalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? products = freezed,
    Object? options = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductLocalModel>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ProductLocalModel>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductLocalModelImplCopyWith<$Res>
    implements $ProductLocalModelCopyWith<$Res> {
  factory _$$ProductLocalModelImplCopyWith(_$ProductLocalModelImpl value,
          $Res Function(_$ProductLocalModelImpl) then) =
      __$$ProductLocalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<ProductLocalModel>? products,
      List<ProductLocalModel>? options,
      double? price});
}

/// @nodoc
class __$$ProductLocalModelImplCopyWithImpl<$Res>
    extends _$ProductLocalModelCopyWithImpl<$Res, _$ProductLocalModelImpl>
    implements _$$ProductLocalModelImplCopyWith<$Res> {
  __$$ProductLocalModelImplCopyWithImpl(_$ProductLocalModelImpl _value,
      $Res Function(_$ProductLocalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? products = freezed,
    Object? options = freezed,
    Object? price = freezed,
  }) {
    return _then(_$ProductLocalModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductLocalModel>?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ProductLocalModel>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductLocalModelImpl implements _ProductLocalModel {
  _$ProductLocalModelImpl(
      {this.name,
      final List<ProductLocalModel>? products,
      final List<ProductLocalModel>? options,
      this.price})
      : _products = products,
        _options = options;

  factory _$ProductLocalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductLocalModelImplFromJson(json);

  @override
  final String? name;
  final List<ProductLocalModel>? _products;
  @override
  List<ProductLocalModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductLocalModel>? _options;
  @override
  List<ProductLocalModel>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? price;

  @override
  String toString() {
    return 'ProductLocalModel(name: $name, products: $products, options: $options, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLocalModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_options),
      price);

  /// Create a copy of ProductLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLocalModelImplCopyWith<_$ProductLocalModelImpl> get copyWith =>
      __$$ProductLocalModelImplCopyWithImpl<_$ProductLocalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductLocalModelImplToJson(
      this,
    );
  }
}

abstract class _ProductLocalModel implements ProductLocalModel {
  factory _ProductLocalModel(
      {final String? name,
      final List<ProductLocalModel>? products,
      final List<ProductLocalModel>? options,
      final double? price}) = _$ProductLocalModelImpl;

  factory _ProductLocalModel.fromJson(Map<String, dynamic> json) =
      _$ProductLocalModelImpl.fromJson;

  @override
  String? get name;
  @override
  List<ProductLocalModel>? get products;
  @override
  List<ProductLocalModel>? get options;
  @override
  double? get price;

  /// Create a copy of ProductLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductLocalModelImplCopyWith<_$ProductLocalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
