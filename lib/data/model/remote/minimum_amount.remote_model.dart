import 'package:freezed_annotation/freezed_annotation.dart';

part 'minimum_amount.remote_model.freezed.dart';
part 'minimum_amount.remote_model.g.dart';

/// MinimumAmountRemoteModel is a model that represents the minimum amount.
@freezed
class MinimumAmountRemoteModel with _$MinimumAmountRemoteModel {
  /// Constructor
  /// @param minimumAmount the minimum amount
  /// @param currencyFrom the currency from
  /// @param currencyTo the currency to
  ///
  factory MinimumAmountRemoteModel({
    required double minimumAmount,
    required String currencyFrom,
    required String currencyTo,
  }) = _MinimumAmountRemoteModel;

  /// From json
  /// @param json the json
  /// @return the minimum amount remote model
  ///
  factory MinimumAmountRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$MinimumAmountRemoteModelFromJson(json);
}
