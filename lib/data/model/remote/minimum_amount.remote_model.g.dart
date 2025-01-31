// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimum_amount.remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MinimumAmountRemoteModelImpl _$$MinimumAmountRemoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MinimumAmountRemoteModelImpl(
      minimumAmount: (json['minimumAmount'] as num).toDouble(),
      currencyFrom: json['currencyFrom'] as String,
      currencyTo: json['currencyTo'] as String,
    );

Map<String, dynamic> _$$MinimumAmountRemoteModelImplToJson(
        _$MinimumAmountRemoteModelImpl instance) =>
    <String, dynamic>{
      'minimumAmount': instance.minimumAmount,
      'currencyFrom': instance.currencyFrom,
      'currencyTo': instance.currencyTo,
    };
