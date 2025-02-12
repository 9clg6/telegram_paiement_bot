// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paiement.remote_model.freezed.dart';
part 'paiement.remote_model.g.dart';

/// A class representing a paiement.
@Freezed(
)
class PaiementRemoteModel with _$PaiementRemoteModel {
  /// Create a new [PaiementRemoteModel].
  /// @param paymentId the payment id
  /// @param paymentStatus the payment status
  /// @param payAddress the pay address
  /// @param priceAmount the price amount
  /// @param priceCurrency the price currency
  /// @param payAmount the pay amount
  /// @param amountReceived the amount received
  /// @param payCurrency the pay currency
  /// @param orderId the order id
  /// @param orderDescription the order description
  /// @param payinExtraId the payin extra id
  /// @param ipnCallbackUrl the ipn callback url
  /// @param customerEmail the customer email
  /// @param createdAt the created at date
  /// @param updatedAt the updated at date
  /// @param purchaseId the purchase id
  /// @param smartContract the smart contract
  /// @param network the network
  /// @param networkPrecision the network precision
  /// @param timeLimit the time limit
  /// @param burningPercent the burning percent
  /// @param expirationEstimateDate the expiration estimate date
  /// @param isFixedRate the is fixed rate
  /// @param isFeePaidByUser the is fee paid by user
  /// @param validUntil the valid until date
  /// @param type the type
  /// @param product the product
  /// @param originIp the origin ip
  /// 
  factory PaiementRemoteModel({
    @JsonKey(name: 'payment_id') String? paymentId,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'pay_address') String? payAddress,
    @JsonKey(name: 'price_amount') double? priceAmount,
    @JsonKey(name: 'price_currency') String? priceCurrency,
    @JsonKey(name: 'pay_amount') double? payAmount,
    @JsonKey(name: 'amount_received') double? amountReceived,
    @JsonKey(name: 'pay_currency') String? payCurrency,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'order_description') String? orderDescription,
    @JsonKey(name: 'payin_extra_id') String? payinExtraId,
    @JsonKey(name: 'ipn_callback_url') String? ipnCallbackUrl,
    @JsonKey(name: 'customer_email') String? customerEmail,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'purchase_id') String? purchaseId,
    @JsonKey(name: 'smart_contract') String? smartContract,
    @JsonKey(name: 'network') String? network,
    @JsonKey(name: 'network_precision') String? networkPrecision,
    @JsonKey(name: 'time_limit') String? timeLimit,
    @JsonKey(name: 'burning_percent') String? burningPercent,
    @JsonKey(name: 'expiration_estimate_date') DateTime? expirationEstimateDate,
    @JsonKey(name: 'is_fixed_rate') bool? isFixedRate,
    @JsonKey(name: 'is_fee_paid_by_user') bool? isFeePaidByUser,
    @JsonKey(name: 'valid_until') DateTime? validUntil,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'product') String? product,
    @JsonKey(name: 'origin_ip') String? originIp,
  }) = _PaiementRemoteModel;

  /// Convert a [PaiementRemoteModel] to a [PaiementRemoteModel].
  /// @param remoteModel the remote model
  /// @return the paiement entity
  /// 
  factory PaiementRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$PaiementRemoteModelFromJson(json);
}
