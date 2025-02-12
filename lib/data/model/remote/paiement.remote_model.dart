import 'package:freezed_annotation/freezed_annotation.dart';

part 'paiement.remote_model.freezed.dart';
part 'paiement.remote_model.g.dart';

/// A class representing a paiement.
@freezed
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
    String? paymentId,
    String? paymentStatus,
    String? payAddress,
    double? priceAmount,
    String? priceCurrency,
    double? payAmount,
    double? amountReceived,
    String? payCurrency,
    String? orderId,
    String? orderDescription,
    String? payinExtraId,
    String? ipnCallbackUrl,
    String? customerEmail,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? purchaseId,
    String? smartContract,
    String? network,
    String? networkPrecision,
    String? timeLimit,
    String? burningPercent,
    DateTime? expirationEstimateDate,
    bool? isFixedRate,
    bool? isFeePaidByUser,
    DateTime? validUntil,
    String? type,
    String? product,
    String? originIp,
  }) = _PaiementRemoteModel;

  /// Convert a [PaiementRemoteModel] to a [PaiementRemoteModel].
  /// @param remoteModel the remote model
  /// @return the paiement entity
  /// 
  factory PaiementRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$PaiementRemoteModelFromJson(json);
}
