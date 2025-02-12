// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paiement.remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaiementRemoteModelImpl _$$PaiementRemoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaiementRemoteModelImpl(
      paymentId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      payAddress: json['pay_address'] as String?,
      priceAmount: (json['price_amount'] as num?)?.toDouble(),
      priceCurrency: json['price_currency'] as String?,
      payAmount: (json['pay_amount'] as num?)?.toDouble(),
      amountReceived: (json['amount_received'] as num?)?.toDouble(),
      payCurrency: json['pay_currency'] as String?,
      orderId: json['order_id'] as String?,
      orderDescription: json['order_description'] as String?,
      payinExtraId: json['payin_extra_id'] as String?,
      ipnCallbackUrl: json['ipn_callback_url'] as String?,
      customerEmail: json['customer_email'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      purchaseId: json['purchase_id'] as String?,
      smartContract: json['smart_contract'] as String?,
      network: json['network'] as String?,
      networkPrecision: json['network_precision'] as String?,
      timeLimit: json['time_limit'] as String?,
      burningPercent: json['burning_percent'] as String?,
      expirationEstimateDate: json['expiration_estimate_date'] == null
          ? null
          : DateTime.parse(json['expiration_estimate_date'] as String),
      isFixedRate: json['is_fixed_rate'] as bool?,
      isFeePaidByUser: json['is_fee_paid_by_user'] as bool?,
      validUntil: json['valid_until'] == null
          ? null
          : DateTime.parse(json['valid_until'] as String),
      type: json['type'] as String?,
      product: json['product'] as String?,
      originIp: json['origin_ip'] as String?,
    );

Map<String, dynamic> _$$PaiementRemoteModelImplToJson(
        _$PaiementRemoteModelImpl instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'pay_address': instance.payAddress,
      'price_amount': instance.priceAmount,
      'price_currency': instance.priceCurrency,
      'pay_amount': instance.payAmount,
      'amount_received': instance.amountReceived,
      'pay_currency': instance.payCurrency,
      'order_id': instance.orderId,
      'order_description': instance.orderDescription,
      'payin_extra_id': instance.payinExtraId,
      'ipn_callback_url': instance.ipnCallbackUrl,
      'customer_email': instance.customerEmail,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'purchase_id': instance.purchaseId,
      'smart_contract': instance.smartContract,
      'network': instance.network,
      'network_precision': instance.networkPrecision,
      'time_limit': instance.timeLimit,
      'burning_percent': instance.burningPercent,
      'expiration_estimate_date':
          instance.expirationEstimateDate?.toIso8601String(),
      'is_fixed_rate': instance.isFixedRate,
      'is_fee_paid_by_user': instance.isFeePaidByUser,
      'valid_until': instance.validUntil?.toIso8601String(),
      'type': instance.type,
      'product': instance.product,
      'origin_ip': instance.originIp,
    };
