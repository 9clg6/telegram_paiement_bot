// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paiement_body.remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePaiementBodyImpl _$$CreatePaiementBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaiementBodyImpl(
      priceAmount: (json['priceAmount'] as num).toDouble(),
      priceCurrency: json['priceCurrency'] as String,
      payCurrency: json['payCurrency'] as String,
      ipnCallbackUrl: json['ipnCallbackUrl'] as String?,
      orderId: json['orderId'] as String?,
      orderDescription: json['orderDescription'] as String?,
      isFixedRate: json['isFixedRate'] as bool,
      isFeePaidByUser: json['isFeePaidByUser'] as bool,
    );

Map<String, dynamic> _$$CreatePaiementBodyImplToJson(
        _$CreatePaiementBodyImpl instance) =>
    <String, dynamic>{
      'priceAmount': instance.priceAmount,
      'priceCurrency': instance.priceCurrency,
      'payCurrency': instance.payCurrency,
      'ipnCallbackUrl': instance.ipnCallbackUrl,
      'orderId': instance.orderId,
      'orderDescription': instance.orderDescription,
      'isFixedRate': instance.isFixedRate,
      'isFeePaidByUser': instance.isFeePaidByUser,
    };
