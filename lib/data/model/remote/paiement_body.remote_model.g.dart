// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paiement_body.remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePaiementBodyImpl _$$CreatePaiementBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaiementBodyImpl(
      priceAmount: (json['price_amount'] as num).toDouble(),
      priceCurrency: json['price_currency'] as String,
      payCurrency: json['pay_currency'] as String,
      orderDescription: json['order_description'] as String?,
      isFixedRate: json['is_fixed_rate'] as bool,
      isFeePaidByUser: json['is_fee_paid_by_user'] as bool,
    );

Map<String, dynamic> _$$CreatePaiementBodyImplToJson(
        _$CreatePaiementBodyImpl instance) =>
    <String, dynamic>{
      'price_amount': instance.priceAmount,
      'price_currency': instance.priceCurrency,
      'pay_currency': instance.payCurrency,
      'order_description': instance.orderDescription,
      'is_fixed_rate': instance.isFixedRate,
      'is_fee_paid_by_user': instance.isFeePaidByUser,
    };
