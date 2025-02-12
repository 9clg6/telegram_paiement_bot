// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paiement.remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaiementRemoteModel _$PaiementRemoteModelFromJson(Map<String, dynamic> json) {
  return _PaiementRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$PaiementRemoteModel {
  @JsonKey(name: 'payment_id')
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_address')
  String? get payAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_amount')
  double? get priceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_currency')
  String? get priceCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_amount')
  double? get payAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_received')
  double? get amountReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_currency')
  String? get payCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_description')
  String? get orderDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'payin_extra_id')
  String? get payinExtraId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ipn_callback_url')
  String? get ipnCallbackUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String? get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchase_id')
  String? get purchaseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'smart_contract')
  String? get smartContract => throw _privateConstructorUsedError;
  @JsonKey(name: 'network')
  String? get network => throw _privateConstructorUsedError;
  @JsonKey(name: 'network_precision')
  String? get networkPrecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_limit')
  String? get timeLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'burning_percent')
  String? get burningPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiration_estimate_date')
  DateTime? get expirationEstimateDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fixed_rate')
  bool? get isFixedRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fee_paid_by_user')
  bool? get isFeePaidByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'valid_until')
  DateTime? get validUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  String? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_ip')
  String? get originIp => throw _privateConstructorUsedError;

  /// Serializes this PaiementRemoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaiementRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaiementRemoteModelCopyWith<PaiementRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaiementRemoteModelCopyWith<$Res> {
  factory $PaiementRemoteModelCopyWith(
          PaiementRemoteModel value, $Res Function(PaiementRemoteModel) then) =
      _$PaiementRemoteModelCopyWithImpl<$Res, PaiementRemoteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_id') String? paymentId,
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
      @JsonKey(name: 'expiration_estimate_date')
      DateTime? expirationEstimateDate,
      @JsonKey(name: 'is_fixed_rate') bool? isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user') bool? isFeePaidByUser,
      @JsonKey(name: 'valid_until') DateTime? validUntil,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'product') String? product,
      @JsonKey(name: 'origin_ip') String? originIp});
}

/// @nodoc
class _$PaiementRemoteModelCopyWithImpl<$Res, $Val extends PaiementRemoteModel>
    implements $PaiementRemoteModelCopyWith<$Res> {
  _$PaiementRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaiementRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? payAddress = freezed,
    Object? priceAmount = freezed,
    Object? priceCurrency = freezed,
    Object? payAmount = freezed,
    Object? amountReceived = freezed,
    Object? payCurrency = freezed,
    Object? orderId = freezed,
    Object? orderDescription = freezed,
    Object? payinExtraId = freezed,
    Object? ipnCallbackUrl = freezed,
    Object? customerEmail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? purchaseId = freezed,
    Object? smartContract = freezed,
    Object? network = freezed,
    Object? networkPrecision = freezed,
    Object? timeLimit = freezed,
    Object? burningPercent = freezed,
    Object? expirationEstimateDate = freezed,
    Object? isFixedRate = freezed,
    Object? isFeePaidByUser = freezed,
    Object? validUntil = freezed,
    Object? type = freezed,
    Object? product = freezed,
    Object? originIp = freezed,
  }) {
    return _then(_value.copyWith(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      payAddress: freezed == payAddress
          ? _value.payAddress
          : payAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      priceAmount: freezed == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      payAmount: freezed == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountReceived: freezed == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as double?,
      payCurrency: freezed == payCurrency
          ? _value.payCurrency
          : payCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      payinExtraId: freezed == payinExtraId
          ? _value.payinExtraId
          : payinExtraId // ignore: cast_nullable_to_non_nullable
              as String?,
      ipnCallbackUrl: freezed == ipnCallbackUrl
          ? _value.ipnCallbackUrl
          : ipnCallbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      purchaseId: freezed == purchaseId
          ? _value.purchaseId
          : purchaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      smartContract: freezed == smartContract
          ? _value.smartContract
          : smartContract // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      networkPrecision: freezed == networkPrecision
          ? _value.networkPrecision
          : networkPrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      burningPercent: freezed == burningPercent
          ? _value.burningPercent
          : burningPercent // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationEstimateDate: freezed == expirationEstimateDate
          ? _value.expirationEstimateDate
          : expirationEstimateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFixedRate: freezed == isFixedRate
          ? _value.isFixedRate
          : isFixedRate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFeePaidByUser: freezed == isFeePaidByUser
          ? _value.isFeePaidByUser
          : isFeePaidByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      validUntil: freezed == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      originIp: freezed == originIp
          ? _value.originIp
          : originIp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaiementRemoteModelImplCopyWith<$Res>
    implements $PaiementRemoteModelCopyWith<$Res> {
  factory _$$PaiementRemoteModelImplCopyWith(_$PaiementRemoteModelImpl value,
          $Res Function(_$PaiementRemoteModelImpl) then) =
      __$$PaiementRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_id') String? paymentId,
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
      @JsonKey(name: 'expiration_estimate_date')
      DateTime? expirationEstimateDate,
      @JsonKey(name: 'is_fixed_rate') bool? isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user') bool? isFeePaidByUser,
      @JsonKey(name: 'valid_until') DateTime? validUntil,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'product') String? product,
      @JsonKey(name: 'origin_ip') String? originIp});
}

/// @nodoc
class __$$PaiementRemoteModelImplCopyWithImpl<$Res>
    extends _$PaiementRemoteModelCopyWithImpl<$Res, _$PaiementRemoteModelImpl>
    implements _$$PaiementRemoteModelImplCopyWith<$Res> {
  __$$PaiementRemoteModelImplCopyWithImpl(_$PaiementRemoteModelImpl _value,
      $Res Function(_$PaiementRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaiementRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? payAddress = freezed,
    Object? priceAmount = freezed,
    Object? priceCurrency = freezed,
    Object? payAmount = freezed,
    Object? amountReceived = freezed,
    Object? payCurrency = freezed,
    Object? orderId = freezed,
    Object? orderDescription = freezed,
    Object? payinExtraId = freezed,
    Object? ipnCallbackUrl = freezed,
    Object? customerEmail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? purchaseId = freezed,
    Object? smartContract = freezed,
    Object? network = freezed,
    Object? networkPrecision = freezed,
    Object? timeLimit = freezed,
    Object? burningPercent = freezed,
    Object? expirationEstimateDate = freezed,
    Object? isFixedRate = freezed,
    Object? isFeePaidByUser = freezed,
    Object? validUntil = freezed,
    Object? type = freezed,
    Object? product = freezed,
    Object? originIp = freezed,
  }) {
    return _then(_$PaiementRemoteModelImpl(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      payAddress: freezed == payAddress
          ? _value.payAddress
          : payAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      priceAmount: freezed == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      payAmount: freezed == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountReceived: freezed == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as double?,
      payCurrency: freezed == payCurrency
          ? _value.payCurrency
          : payCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      payinExtraId: freezed == payinExtraId
          ? _value.payinExtraId
          : payinExtraId // ignore: cast_nullable_to_non_nullable
              as String?,
      ipnCallbackUrl: freezed == ipnCallbackUrl
          ? _value.ipnCallbackUrl
          : ipnCallbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      purchaseId: freezed == purchaseId
          ? _value.purchaseId
          : purchaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      smartContract: freezed == smartContract
          ? _value.smartContract
          : smartContract // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      networkPrecision: freezed == networkPrecision
          ? _value.networkPrecision
          : networkPrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      burningPercent: freezed == burningPercent
          ? _value.burningPercent
          : burningPercent // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationEstimateDate: freezed == expirationEstimateDate
          ? _value.expirationEstimateDate
          : expirationEstimateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFixedRate: freezed == isFixedRate
          ? _value.isFixedRate
          : isFixedRate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFeePaidByUser: freezed == isFeePaidByUser
          ? _value.isFeePaidByUser
          : isFeePaidByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      validUntil: freezed == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      originIp: freezed == originIp
          ? _value.originIp
          : originIp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaiementRemoteModelImpl implements _PaiementRemoteModel {
  _$PaiementRemoteModelImpl(
      {@JsonKey(name: 'payment_id') this.paymentId,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'pay_address') this.payAddress,
      @JsonKey(name: 'price_amount') this.priceAmount,
      @JsonKey(name: 'price_currency') this.priceCurrency,
      @JsonKey(name: 'pay_amount') this.payAmount,
      @JsonKey(name: 'amount_received') this.amountReceived,
      @JsonKey(name: 'pay_currency') this.payCurrency,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'order_description') this.orderDescription,
      @JsonKey(name: 'payin_extra_id') this.payinExtraId,
      @JsonKey(name: 'ipn_callback_url') this.ipnCallbackUrl,
      @JsonKey(name: 'customer_email') this.customerEmail,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'purchase_id') this.purchaseId,
      @JsonKey(name: 'smart_contract') this.smartContract,
      @JsonKey(name: 'network') this.network,
      @JsonKey(name: 'network_precision') this.networkPrecision,
      @JsonKey(name: 'time_limit') this.timeLimit,
      @JsonKey(name: 'burning_percent') this.burningPercent,
      @JsonKey(name: 'expiration_estimate_date') this.expirationEstimateDate,
      @JsonKey(name: 'is_fixed_rate') this.isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user') this.isFeePaidByUser,
      @JsonKey(name: 'valid_until') this.validUntil,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'product') this.product,
      @JsonKey(name: 'origin_ip') this.originIp});

  factory _$PaiementRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaiementRemoteModelImplFromJson(json);

  @override
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'pay_address')
  final String? payAddress;
  @override
  @JsonKey(name: 'price_amount')
  final double? priceAmount;
  @override
  @JsonKey(name: 'price_currency')
  final String? priceCurrency;
  @override
  @JsonKey(name: 'pay_amount')
  final double? payAmount;
  @override
  @JsonKey(name: 'amount_received')
  final double? amountReceived;
  @override
  @JsonKey(name: 'pay_currency')
  final String? payCurrency;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'order_description')
  final String? orderDescription;
  @override
  @JsonKey(name: 'payin_extra_id')
  final String? payinExtraId;
  @override
  @JsonKey(name: 'ipn_callback_url')
  final String? ipnCallbackUrl;
  @override
  @JsonKey(name: 'customer_email')
  final String? customerEmail;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'purchase_id')
  final String? purchaseId;
  @override
  @JsonKey(name: 'smart_contract')
  final String? smartContract;
  @override
  @JsonKey(name: 'network')
  final String? network;
  @override
  @JsonKey(name: 'network_precision')
  final String? networkPrecision;
  @override
  @JsonKey(name: 'time_limit')
  final String? timeLimit;
  @override
  @JsonKey(name: 'burning_percent')
  final String? burningPercent;
  @override
  @JsonKey(name: 'expiration_estimate_date')
  final DateTime? expirationEstimateDate;
  @override
  @JsonKey(name: 'is_fixed_rate')
  final bool? isFixedRate;
  @override
  @JsonKey(name: 'is_fee_paid_by_user')
  final bool? isFeePaidByUser;
  @override
  @JsonKey(name: 'valid_until')
  final DateTime? validUntil;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'product')
  final String? product;
  @override
  @JsonKey(name: 'origin_ip')
  final String? originIp;

  @override
  String toString() {
    return 'PaiementRemoteModel(paymentId: $paymentId, paymentStatus: $paymentStatus, payAddress: $payAddress, priceAmount: $priceAmount, priceCurrency: $priceCurrency, payAmount: $payAmount, amountReceived: $amountReceived, payCurrency: $payCurrency, orderId: $orderId, orderDescription: $orderDescription, payinExtraId: $payinExtraId, ipnCallbackUrl: $ipnCallbackUrl, customerEmail: $customerEmail, createdAt: $createdAt, updatedAt: $updatedAt, purchaseId: $purchaseId, smartContract: $smartContract, network: $network, networkPrecision: $networkPrecision, timeLimit: $timeLimit, burningPercent: $burningPercent, expirationEstimateDate: $expirationEstimateDate, isFixedRate: $isFixedRate, isFeePaidByUser: $isFeePaidByUser, validUntil: $validUntil, type: $type, product: $product, originIp: $originIp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaiementRemoteModelImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.payAddress, payAddress) ||
                other.payAddress == payAddress) &&
            (identical(other.priceAmount, priceAmount) ||
                other.priceAmount == priceAmount) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.amountReceived, amountReceived) ||
                other.amountReceived == amountReceived) &&
            (identical(other.payCurrency, payCurrency) ||
                other.payCurrency == payCurrency) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.payinExtraId, payinExtraId) ||
                other.payinExtraId == payinExtraId) &&
            (identical(other.ipnCallbackUrl, ipnCallbackUrl) ||
                other.ipnCallbackUrl == ipnCallbackUrl) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.purchaseId, purchaseId) ||
                other.purchaseId == purchaseId) &&
            (identical(other.smartContract, smartContract) ||
                other.smartContract == smartContract) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.networkPrecision, networkPrecision) ||
                other.networkPrecision == networkPrecision) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.burningPercent, burningPercent) ||
                other.burningPercent == burningPercent) &&
            (identical(other.expirationEstimateDate, expirationEstimateDate) ||
                other.expirationEstimateDate == expirationEstimateDate) &&
            (identical(other.isFixedRate, isFixedRate) ||
                other.isFixedRate == isFixedRate) &&
            (identical(other.isFeePaidByUser, isFeePaidByUser) ||
                other.isFeePaidByUser == isFeePaidByUser) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.originIp, originIp) ||
                other.originIp == originIp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        paymentId,
        paymentStatus,
        payAddress,
        priceAmount,
        priceCurrency,
        payAmount,
        amountReceived,
        payCurrency,
        orderId,
        orderDescription,
        payinExtraId,
        ipnCallbackUrl,
        customerEmail,
        createdAt,
        updatedAt,
        purchaseId,
        smartContract,
        network,
        networkPrecision,
        timeLimit,
        burningPercent,
        expirationEstimateDate,
        isFixedRate,
        isFeePaidByUser,
        validUntil,
        type,
        product,
        originIp
      ]);

  /// Create a copy of PaiementRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaiementRemoteModelImplCopyWith<_$PaiementRemoteModelImpl> get copyWith =>
      __$$PaiementRemoteModelImplCopyWithImpl<_$PaiementRemoteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaiementRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _PaiementRemoteModel implements PaiementRemoteModel {
  factory _PaiementRemoteModel(
          {@JsonKey(name: 'payment_id') final String? paymentId,
          @JsonKey(name: 'payment_status') final String? paymentStatus,
          @JsonKey(name: 'pay_address') final String? payAddress,
          @JsonKey(name: 'price_amount') final double? priceAmount,
          @JsonKey(name: 'price_currency') final String? priceCurrency,
          @JsonKey(name: 'pay_amount') final double? payAmount,
          @JsonKey(name: 'amount_received') final double? amountReceived,
          @JsonKey(name: 'pay_currency') final String? payCurrency,
          @JsonKey(name: 'order_id') final String? orderId,
          @JsonKey(name: 'order_description') final String? orderDescription,
          @JsonKey(name: 'payin_extra_id') final String? payinExtraId,
          @JsonKey(name: 'ipn_callback_url') final String? ipnCallbackUrl,
          @JsonKey(name: 'customer_email') final String? customerEmail,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'purchase_id') final String? purchaseId,
          @JsonKey(name: 'smart_contract') final String? smartContract,
          @JsonKey(name: 'network') final String? network,
          @JsonKey(name: 'network_precision') final String? networkPrecision,
          @JsonKey(name: 'time_limit') final String? timeLimit,
          @JsonKey(name: 'burning_percent') final String? burningPercent,
          @JsonKey(name: 'expiration_estimate_date')
          final DateTime? expirationEstimateDate,
          @JsonKey(name: 'is_fixed_rate') final bool? isFixedRate,
          @JsonKey(name: 'is_fee_paid_by_user') final bool? isFeePaidByUser,
          @JsonKey(name: 'valid_until') final DateTime? validUntil,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'product') final String? product,
          @JsonKey(name: 'origin_ip') final String? originIp}) =
      _$PaiementRemoteModelImpl;

  factory _PaiementRemoteModel.fromJson(Map<String, dynamic> json) =
      _$PaiementRemoteModelImpl.fromJson;

  @override
  @JsonKey(name: 'payment_id')
  String? get paymentId;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'pay_address')
  String? get payAddress;
  @override
  @JsonKey(name: 'price_amount')
  double? get priceAmount;
  @override
  @JsonKey(name: 'price_currency')
  String? get priceCurrency;
  @override
  @JsonKey(name: 'pay_amount')
  double? get payAmount;
  @override
  @JsonKey(name: 'amount_received')
  double? get amountReceived;
  @override
  @JsonKey(name: 'pay_currency')
  String? get payCurrency;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'order_description')
  String? get orderDescription;
  @override
  @JsonKey(name: 'payin_extra_id')
  String? get payinExtraId;
  @override
  @JsonKey(name: 'ipn_callback_url')
  String? get ipnCallbackUrl;
  @override
  @JsonKey(name: 'customer_email')
  String? get customerEmail;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'purchase_id')
  String? get purchaseId;
  @override
  @JsonKey(name: 'smart_contract')
  String? get smartContract;
  @override
  @JsonKey(name: 'network')
  String? get network;
  @override
  @JsonKey(name: 'network_precision')
  String? get networkPrecision;
  @override
  @JsonKey(name: 'time_limit')
  String? get timeLimit;
  @override
  @JsonKey(name: 'burning_percent')
  String? get burningPercent;
  @override
  @JsonKey(name: 'expiration_estimate_date')
  DateTime? get expirationEstimateDate;
  @override
  @JsonKey(name: 'is_fixed_rate')
  bool? get isFixedRate;
  @override
  @JsonKey(name: 'is_fee_paid_by_user')
  bool? get isFeePaidByUser;
  @override
  @JsonKey(name: 'valid_until')
  DateTime? get validUntil;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'product')
  String? get product;
  @override
  @JsonKey(name: 'origin_ip')
  String? get originIp;

  /// Create a copy of PaiementRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaiementRemoteModelImplCopyWith<_$PaiementRemoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
