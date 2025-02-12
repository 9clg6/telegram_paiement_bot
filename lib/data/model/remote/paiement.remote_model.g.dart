// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paiement.remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaiementRemoteModelImpl _$$PaiementRemoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaiementRemoteModelImpl(
      paymentId: json['paymentId'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      payAddress: json['payAddress'] as String?,
      priceAmount: (json['priceAmount'] as num?)?.toDouble(),
      priceCurrency: json['priceCurrency'] as String?,
      payAmount: (json['payAmount'] as num?)?.toDouble(),
      amountReceived: (json['amountReceived'] as num?)?.toDouble(),
      payCurrency: json['payCurrency'] as String?,
      orderId: json['orderId'] as String?,
      orderDescription: json['orderDescription'] as String?,
      payinExtraId: json['payinExtraId'] as String?,
      ipnCallbackUrl: json['ipnCallbackUrl'] as String?,
      customerEmail: json['customerEmail'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      purchaseId: json['purchaseId'] as String?,
      smartContract: json['smartContract'] as String?,
      network: json['network'] as String?,
      networkPrecision: json['networkPrecision'] as String?,
      timeLimit: json['timeLimit'] as String?,
      burningPercent: json['burningPercent'] as String?,
      expirationEstimateDate: json['expirationEstimateDate'] == null
          ? null
          : DateTime.parse(json['expirationEstimateDate'] as String),
      isFixedRate: json['isFixedRate'] as bool?,
      isFeePaidByUser: json['isFeePaidByUser'] as bool?,
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
      type: json['type'] as String?,
      product: json['product'] as String?,
      originIp: json['originIp'] as String?,
    );

Map<String, dynamic> _$$PaiementRemoteModelImplToJson(
        _$PaiementRemoteModelImpl instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'paymentStatus': instance.paymentStatus,
      'payAddress': instance.payAddress,
      'priceAmount': instance.priceAmount,
      'priceCurrency': instance.priceCurrency,
      'payAmount': instance.payAmount,
      'amountReceived': instance.amountReceived,
      'payCurrency': instance.payCurrency,
      'orderId': instance.orderId,
      'orderDescription': instance.orderDescription,
      'payinExtraId': instance.payinExtraId,
      'ipnCallbackUrl': instance.ipnCallbackUrl,
      'customerEmail': instance.customerEmail,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'purchaseId': instance.purchaseId,
      'smartContract': instance.smartContract,
      'network': instance.network,
      'networkPrecision': instance.networkPrecision,
      'timeLimit': instance.timeLimit,
      'burningPercent': instance.burningPercent,
      'expirationEstimateDate':
          instance.expirationEstimateDate?.toIso8601String(),
      'isFixedRate': instance.isFixedRate,
      'isFeePaidByUser': instance.isFeePaidByUser,
      'validUntil': instance.validUntil?.toIso8601String(),
      'type': instance.type,
      'product': instance.product,
      'originIp': instance.originIp,
    };
