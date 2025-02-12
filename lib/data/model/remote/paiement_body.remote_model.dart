import 'package:freezed_annotation/freezed_annotation.dart';

part 'paiement_body.remote_model.freezed.dart';
part 'paiement_body.remote_model.g.dart';

/// Create a paiement body.
@freezed
class CreatePaiementBody with _$CreatePaiementBody {
  /// Constructor.
  /// @param priceAmount the price amount
  /// @param priceCurrency the price currency
  /// @param payCurrency the pay currency
  /// @param ipnCallbackUrl the ipn callback url
  /// @param orderId the order id
  /// @param orderDescription the order description
  /// @param isFixedRate the is fixed rate
  /// @param isFeePaidByUser the is fee paid by user
  ///
  factory CreatePaiementBody({
    required double priceAmount,
    required String priceCurrency,
    required String payCurrency,
    String? ipnCallbackUrl,
    String? orderId,
    String? orderDescription,
    required bool isFixedRate,
    required bool isFeePaidByUser,
  }) = _CreatePaiementBody;

  /// FromJson.
  factory CreatePaiementBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePaiementBodyFromJson(json);
}
