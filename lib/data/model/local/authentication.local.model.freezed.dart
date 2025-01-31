// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.local.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationLocalModel _$AuthenticationLocalModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationLocalModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationLocalModel {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this AuthenticationLocalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationLocalModelCopyWith<AuthenticationLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationLocalModelCopyWith<$Res> {
  factory $AuthenticationLocalModelCopyWith(AuthenticationLocalModel value,
          $Res Function(AuthenticationLocalModel) then) =
      _$AuthenticationLocalModelCopyWithImpl<$Res, AuthenticationLocalModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AuthenticationLocalModelCopyWithImpl<$Res,
        $Val extends AuthenticationLocalModel>
    implements $AuthenticationLocalModelCopyWith<$Res> {
  _$AuthenticationLocalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationLocalModelImplCopyWith<$Res>
    implements $AuthenticationLocalModelCopyWith<$Res> {
  factory _$$AuthenticationLocalModelImplCopyWith(
          _$AuthenticationLocalModelImpl value,
          $Res Function(_$AuthenticationLocalModelImpl) then) =
      __$$AuthenticationLocalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthenticationLocalModelImplCopyWithImpl<$Res>
    extends _$AuthenticationLocalModelCopyWithImpl<$Res,
        _$AuthenticationLocalModelImpl>
    implements _$$AuthenticationLocalModelImplCopyWith<$Res> {
  __$$AuthenticationLocalModelImplCopyWithImpl(
      _$AuthenticationLocalModelImpl _value,
      $Res Function(_$AuthenticationLocalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthenticationLocalModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationLocalModelImpl implements _AuthenticationLocalModel {
  const _$AuthenticationLocalModelImpl({required this.token});

  factory _$AuthenticationLocalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationLocalModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationLocalModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLocalModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthenticationLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationLocalModelImplCopyWith<_$AuthenticationLocalModelImpl>
      get copyWith => __$$AuthenticationLocalModelImplCopyWithImpl<
          _$AuthenticationLocalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationLocalModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationLocalModel implements AuthenticationLocalModel {
  const factory _AuthenticationLocalModel({required final String token}) =
      _$AuthenticationLocalModelImpl;

  factory _AuthenticationLocalModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticationLocalModelImpl.fromJson;

  @override
  String get token;

  /// Create a copy of AuthenticationLocalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationLocalModelImplCopyWith<_$AuthenticationLocalModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
