import 'package:telegram_paiement_bot/data/model/remote/paiement.remote_model.dart';

/// A class representing a paiement.
class PaiementEntity {
  /// The payment id
  final String? paymentId;

  /// The payment status
  final String? paymentStatus;

  /// The pay address
  final String? payAddress;

  /// The price amount
  final double? priceAmount;

  /// The price currency
  final String? priceCurrency;

  /// The pay amount
  final double? payAmount;

  /// The amount received
  final double? amountReceived;

  /// The pay currency
  final String? payCurrency;

  /// The order id
  final String? orderId;

  /// The order description
  final String? orderDescription;

  /// The payin extra id
  final String? payinExtraId;

  /// The ipn callback url
  final String? ipnCallbackUrl;

  /// The customer email
  final String? customerEmail;

  /// The created at date
  final DateTime? createdAt;

  /// The updated at date
  final DateTime? updatedAt;

  /// The purchase id
  final String? purchaseId;

  /// The smart contract
  final String? smartContract;

  /// The network
  final String? network;

  /// The network precision
  final String? networkPrecision;

  /// The time limit
  final String? timeLimit;

  /// The burning percent
  final String? burningPercent;

  /// The expiration estimate date
  final DateTime? expirationEstimateDate;

  /// The is fixed rate
  final bool? isFixedRate;

  /// The is fee paid by user
  final bool? isFeePaidByUser;

  /// The valid until date
  final DateTime? validUntil;

  /// The type
  final String? type;

  /// The product
  final String? product;

  /// The origin ip
  final String? originIp;

  /// Create a new [PaiementEntity].
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
  PaiementEntity({
    this.paymentId,
    this.paymentStatus,
    this.payAddress,
    this.priceAmount,
    this.priceCurrency,
    this.payAmount,
    this.amountReceived,
    this.payCurrency,
    this.orderId,
    this.orderDescription,
    this.payinExtraId,
    this.ipnCallbackUrl,
    this.customerEmail,
    this.createdAt,
    this.updatedAt,
    this.purchaseId,
    this.smartContract,
    this.network,
    this.networkPrecision,
    this.timeLimit,
    this.burningPercent,
    this.expirationEstimateDate,
    this.isFixedRate,
    this.isFeePaidByUser,
    this.validUntil,
    this.type,
    this.product,
    this.originIp,
  });

  /// Convert a [PaiementRemoteModel] to a [PaiementEntity].
  /// @param remoteModel the remote model
  /// @return the paiement entity
  /// 
  factory PaiementEntity.fromRemoteModel(PaiementRemoteModel remoteModel) {
    return PaiementEntity(
      paymentId: remoteModel.paymentId,
      paymentStatus: remoteModel.paymentStatus,
      payAddress: remoteModel.payAddress,
      priceAmount: remoteModel.priceAmount,
      priceCurrency: remoteModel.priceCurrency,
      payAmount: remoteModel.payAmount,
      amountReceived: remoteModel.amountReceived,
      payCurrency: remoteModel.payCurrency,
      orderId: remoteModel.orderId,
      orderDescription: remoteModel.orderDescription,
      payinExtraId: remoteModel.payinExtraId,
      ipnCallbackUrl: remoteModel.ipnCallbackUrl,
      customerEmail: remoteModel.customerEmail,
      createdAt: remoteModel.createdAt,
      updatedAt: remoteModel.updatedAt,
      purchaseId: remoteModel.purchaseId,
      smartContract: remoteModel.smartContract,
      network: remoteModel.network,
      networkPrecision: remoteModel.networkPrecision,
      timeLimit: remoteModel.timeLimit,
      burningPercent: remoteModel.burningPercent,
      expirationEstimateDate: remoteModel.expirationEstimateDate,
      isFixedRate: remoteModel.isFixedRate,
      isFeePaidByUser: remoteModel.isFeePaidByUser,
      validUntil: remoteModel.validUntil,
      type: remoteModel.type,
      product: remoteModel.product,
      originIp: remoteModel.originIp,
    );
  }
}