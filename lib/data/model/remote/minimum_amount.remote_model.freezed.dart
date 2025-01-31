// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minimum_amount.remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MinimumAmountRemoteModel _$MinimumAmountRemoteModelFromJson(
    Map<String, dynamic> json) {
  return _MinimumAmountRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$MinimumAmountRemoteModel {
  double get minimumAmount => throw _privateConstructorUsedError;
  String get currencyFrom => throw _privateConstructorUsedError;
  String get currencyTo => throw _privateConstructorUsedError;

  /// Serializes this MinimumAmountRemoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MinimumAmountRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MinimumAmountRemoteModelCopyWith<MinimumAmountRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimumAmountRemoteModelCopyWith<$Res> {
  factory $MinimumAmountRemoteModelCopyWith(MinimumAmountRemoteModel value,
          $Res Function(MinimumAmountRemoteModel) then) =
      _$MinimumAmountRemoteModelCopyWithImpl<$Res, MinimumAmountRemoteModel>;
  @useResult
  $Res call({double minimumAmount, String currencyFrom, String currencyTo});
}

/// @nodoc
class _$MinimumAmountRemoteModelCopyWithImpl<$Res,
        $Val extends MinimumAmountRemoteModel>
    implements $MinimumAmountRemoteModelCopyWith<$Res> {
  _$MinimumAmountRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MinimumAmountRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimumAmount = null,
    Object? currencyFrom = null,
    Object? currencyTo = null,
  }) {
    return _then(_value.copyWith(
      minimumAmount: null == minimumAmount
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyFrom: null == currencyFrom
          ? _value.currencyFrom
          : currencyFrom // ignore: cast_nullable_to_non_nullable
              as String,
      currencyTo: null == currencyTo
          ? _value.currencyTo
          : currencyTo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinimumAmountRemoteModelImplCopyWith<$Res>
    implements $MinimumAmountRemoteModelCopyWith<$Res> {
  factory _$$MinimumAmountRemoteModelImplCopyWith(
          _$MinimumAmountRemoteModelImpl value,
          $Res Function(_$MinimumAmountRemoteModelImpl) then) =
      __$$MinimumAmountRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double minimumAmount, String currencyFrom, String currencyTo});
}

/// @nodoc
class __$$MinimumAmountRemoteModelImplCopyWithImpl<$Res>
    extends _$MinimumAmountRemoteModelCopyWithImpl<$Res,
        _$MinimumAmountRemoteModelImpl>
    implements _$$MinimumAmountRemoteModelImplCopyWith<$Res> {
  __$$MinimumAmountRemoteModelImplCopyWithImpl(
      _$MinimumAmountRemoteModelImpl _value,
      $Res Function(_$MinimumAmountRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MinimumAmountRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimumAmount = null,
    Object? currencyFrom = null,
    Object? currencyTo = null,
  }) {
    return _then(_$MinimumAmountRemoteModelImpl(
      minimumAmount: null == minimumAmount
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyFrom: null == currencyFrom
          ? _value.currencyFrom
          : currencyFrom // ignore: cast_nullable_to_non_nullable
              as String,
      currencyTo: null == currencyTo
          ? _value.currencyTo
          : currencyTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinimumAmountRemoteModelImpl implements _MinimumAmountRemoteModel {
  _$MinimumAmountRemoteModelImpl(
      {required this.minimumAmount,
      required this.currencyFrom,
      required this.currencyTo});

  factory _$MinimumAmountRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinimumAmountRemoteModelImplFromJson(json);

  @override
  final double minimumAmount;
  @override
  final String currencyFrom;
  @override
  final String currencyTo;

  @override
  String toString() {
    return 'MinimumAmountRemoteModel(minimumAmount: $minimumAmount, currencyFrom: $currencyFrom, currencyTo: $currencyTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinimumAmountRemoteModelImpl &&
            (identical(other.minimumAmount, minimumAmount) ||
                other.minimumAmount == minimumAmount) &&
            (identical(other.currencyFrom, currencyFrom) ||
                other.currencyFrom == currencyFrom) &&
            (identical(other.currencyTo, currencyTo) ||
                other.currencyTo == currencyTo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minimumAmount, currencyFrom, currencyTo);

  /// Create a copy of MinimumAmountRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MinimumAmountRemoteModelImplCopyWith<_$MinimumAmountRemoteModelImpl>
      get copyWith => __$$MinimumAmountRemoteModelImplCopyWithImpl<
          _$MinimumAmountRemoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinimumAmountRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _MinimumAmountRemoteModel implements MinimumAmountRemoteModel {
  factory _MinimumAmountRemoteModel(
      {required final double minimumAmount,
      required final String currencyFrom,
      required final String currencyTo}) = _$MinimumAmountRemoteModelImpl;

  factory _MinimumAmountRemoteModel.fromJson(Map<String, dynamic> json) =
      _$MinimumAmountRemoteModelImpl.fromJson;

  @override
  double get minimumAmount;
  @override
  String get currencyFrom;
  @override
  String get currencyTo;

  /// Create a copy of MinimumAmountRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MinimumAmountRemoteModelImplCopyWith<_$MinimumAmountRemoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
