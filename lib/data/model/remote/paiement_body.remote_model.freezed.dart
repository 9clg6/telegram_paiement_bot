// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paiement_body.remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePaiementBody _$CreatePaiementBodyFromJson(Map<String, dynamic> json) {
  return _CreatePaiementBody.fromJson(json);
}

/// @nodoc
mixin _$CreatePaiementBody {
  @JsonKey(name: 'price_amount')
  double get priceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_currency')
  String get priceCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_currency')
  String get payCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_description')
  String? get orderDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fixed_rate')
  bool get isFixedRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fee_paid_by_user')
  bool get isFeePaidByUser => throw _privateConstructorUsedError;

  /// Serializes this CreatePaiementBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePaiementBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePaiementBodyCopyWith<CreatePaiementBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaiementBodyCopyWith<$Res> {
  factory $CreatePaiementBodyCopyWith(
          CreatePaiementBody value, $Res Function(CreatePaiementBody) then) =
      _$CreatePaiementBodyCopyWithImpl<$Res, CreatePaiementBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price_amount') double priceAmount,
      @JsonKey(name: 'price_currency') String priceCurrency,
      @JsonKey(name: 'pay_currency') String payCurrency,
      @JsonKey(name: 'order_description') String? orderDescription,
      @JsonKey(name: 'is_fixed_rate') bool isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user') bool isFeePaidByUser});
}

/// @nodoc
class _$CreatePaiementBodyCopyWithImpl<$Res, $Val extends CreatePaiementBody>
    implements $CreatePaiementBodyCopyWith<$Res> {
  _$CreatePaiementBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePaiementBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceAmount = null,
    Object? priceCurrency = null,
    Object? payCurrency = null,
    Object? orderDescription = freezed,
    Object? isFixedRate = null,
    Object? isFeePaidByUser = null,
  }) {
    return _then(_value.copyWith(
      priceAmount: null == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      payCurrency: null == payCurrency
          ? _value.payCurrency
          : payCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isFixedRate: null == isFixedRate
          ? _value.isFixedRate
          : isFixedRate // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeePaidByUser: null == isFeePaidByUser
          ? _value.isFeePaidByUser
          : isFeePaidByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePaiementBodyImplCopyWith<$Res>
    implements $CreatePaiementBodyCopyWith<$Res> {
  factory _$$CreatePaiementBodyImplCopyWith(_$CreatePaiementBodyImpl value,
          $Res Function(_$CreatePaiementBodyImpl) then) =
      __$$CreatePaiementBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price_amount') double priceAmount,
      @JsonKey(name: 'price_currency') String priceCurrency,
      @JsonKey(name: 'pay_currency') String payCurrency,
      @JsonKey(name: 'order_description') String? orderDescription,
      @JsonKey(name: 'is_fixed_rate') bool isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user') bool isFeePaidByUser});
}

/// @nodoc
class __$$CreatePaiementBodyImplCopyWithImpl<$Res>
    extends _$CreatePaiementBodyCopyWithImpl<$Res, _$CreatePaiementBodyImpl>
    implements _$$CreatePaiementBodyImplCopyWith<$Res> {
  __$$CreatePaiementBodyImplCopyWithImpl(_$CreatePaiementBodyImpl _value,
      $Res Function(_$CreatePaiementBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePaiementBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceAmount = null,
    Object? priceCurrency = null,
    Object? payCurrency = null,
    Object? orderDescription = freezed,
    Object? isFixedRate = null,
    Object? isFeePaidByUser = null,
  }) {
    return _then(_$CreatePaiementBodyImpl(
      priceAmount: null == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      payCurrency: null == payCurrency
          ? _value.payCurrency
          : payCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isFixedRate: null == isFixedRate
          ? _value.isFixedRate
          : isFixedRate // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeePaidByUser: null == isFeePaidByUser
          ? _value.isFeePaidByUser
          : isFeePaidByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePaiementBodyImpl implements _CreatePaiementBody {
  _$CreatePaiementBodyImpl(
      {@JsonKey(name: 'price_amount') required this.priceAmount,
      @JsonKey(name: 'price_currency') required this.priceCurrency,
      @JsonKey(name: 'pay_currency') required this.payCurrency,
      @JsonKey(name: 'order_description') this.orderDescription,
      @JsonKey(name: 'is_fixed_rate') required this.isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user') required this.isFeePaidByUser});

  factory _$CreatePaiementBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePaiementBodyImplFromJson(json);

  @override
  @JsonKey(name: 'price_amount')
  final double priceAmount;
  @override
  @JsonKey(name: 'price_currency')
  final String priceCurrency;
  @override
  @JsonKey(name: 'pay_currency')
  final String payCurrency;
  @override
  @JsonKey(name: 'order_description')
  final String? orderDescription;
  @override
  @JsonKey(name: 'is_fixed_rate')
  final bool isFixedRate;
  @override
  @JsonKey(name: 'is_fee_paid_by_user')
  final bool isFeePaidByUser;

  @override
  String toString() {
    return 'CreatePaiementBody(priceAmount: $priceAmount, priceCurrency: $priceCurrency, payCurrency: $payCurrency, orderDescription: $orderDescription, isFixedRate: $isFixedRate, isFeePaidByUser: $isFeePaidByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaiementBodyImpl &&
            (identical(other.priceAmount, priceAmount) ||
                other.priceAmount == priceAmount) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.payCurrency, payCurrency) ||
                other.payCurrency == payCurrency) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.isFixedRate, isFixedRate) ||
                other.isFixedRate == isFixedRate) &&
            (identical(other.isFeePaidByUser, isFeePaidByUser) ||
                other.isFeePaidByUser == isFeePaidByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, priceAmount, priceCurrency,
      payCurrency, orderDescription, isFixedRate, isFeePaidByUser);

  /// Create a copy of CreatePaiementBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePaiementBodyImplCopyWith<_$CreatePaiementBodyImpl> get copyWith =>
      __$$CreatePaiementBodyImplCopyWithImpl<_$CreatePaiementBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePaiementBodyImplToJson(
      this,
    );
  }
}

abstract class _CreatePaiementBody implements CreatePaiementBody {
  factory _CreatePaiementBody(
      {@JsonKey(name: 'price_amount') required final double priceAmount,
      @JsonKey(name: 'price_currency') required final String priceCurrency,
      @JsonKey(name: 'pay_currency') required final String payCurrency,
      @JsonKey(name: 'order_description') final String? orderDescription,
      @JsonKey(name: 'is_fixed_rate') required final bool isFixedRate,
      @JsonKey(name: 'is_fee_paid_by_user')
      required final bool isFeePaidByUser}) = _$CreatePaiementBodyImpl;

  factory _CreatePaiementBody.fromJson(Map<String, dynamic> json) =
      _$CreatePaiementBodyImpl.fromJson;

  @override
  @JsonKey(name: 'price_amount')
  double get priceAmount;
  @override
  @JsonKey(name: 'price_currency')
  String get priceCurrency;
  @override
  @JsonKey(name: 'pay_currency')
  String get payCurrency;
  @override
  @JsonKey(name: 'order_description')
  String? get orderDescription;
  @override
  @JsonKey(name: 'is_fixed_rate')
  bool get isFixedRate;
  @override
  @JsonKey(name: 'is_fee_paid_by_user')
  bool get isFeePaidByUser;

  /// Create a copy of CreatePaiementBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePaiementBodyImplCopyWith<_$CreatePaiementBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
