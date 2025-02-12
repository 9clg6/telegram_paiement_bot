// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsLocalModelImpl _$$ProductsLocalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsLocalModelImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductLocalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsLocalModelImplToJson(
        _$ProductsLocalModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductLocalModelImpl _$$ProductLocalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductLocalModelImpl(
      name: json['name'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductLocalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => ProductLocalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProductLocalModelImplToJson(
        _$ProductLocalModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'products': instance.products,
      'options': instance.options,
      'price': instance.price,
    };
