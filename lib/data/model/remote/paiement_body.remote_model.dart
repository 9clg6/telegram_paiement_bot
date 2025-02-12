// ignore_for_file: invalid_annotation_target

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
  /// @param orderDescription the order description
  /// @param isFixedRate the is fixed rate
  /// @param isFeePaidByUser the is fee paid by user
  ///
  factory CreatePaiementBody({
    @JsonKey(name: 'price_amount') required double priceAmount,
    @JsonKey(name: 'price_currency') required String priceCurrency,
    @JsonKey(name: 'pay_currency') required String payCurrency,
    @JsonKey(name: 'order_description') String? orderDescription,
    @JsonKey(name: 'is_fixed_rate') required bool isFixedRate,
    @JsonKey(name: 'is_fee_paid_by_user') required bool isFeePaidByUser,
  }) = _CreatePaiementBody;

  /// FromJson.
  factory CreatePaiementBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePaiementBodyFromJson(json);
}
