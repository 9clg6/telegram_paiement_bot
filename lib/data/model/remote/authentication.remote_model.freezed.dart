// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationRemoteModel _$AuthenticationRemoteModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationRemoteModel {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this AuthenticationRemoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationRemoteModelCopyWith<AuthenticationRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationRemoteModelCopyWith<$Res> {
  factory $AuthenticationRemoteModelCopyWith(AuthenticationRemoteModel value,
          $Res Function(AuthenticationRemoteModel) then) =
      _$AuthenticationRemoteModelCopyWithImpl<$Res, AuthenticationRemoteModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AuthenticationRemoteModelCopyWithImpl<$Res,
        $Val extends AuthenticationRemoteModel>
    implements $AuthenticationRemoteModelCopyWith<$Res> {
  _$AuthenticationRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationRemoteModel
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
abstract class _$$AuthenticationRemoteModelImplCopyWith<$Res>
    implements $AuthenticationRemoteModelCopyWith<$Res> {
  factory _$$AuthenticationRemoteModelImplCopyWith(
          _$AuthenticationRemoteModelImpl value,
          $Res Function(_$AuthenticationRemoteModelImpl) then) =
      __$$AuthenticationRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthenticationRemoteModelImplCopyWithImpl<$Res>
    extends _$AuthenticationRemoteModelCopyWithImpl<$Res,
        _$AuthenticationRemoteModelImpl>
    implements _$$AuthenticationRemoteModelImplCopyWith<$Res> {
  __$$AuthenticationRemoteModelImplCopyWithImpl(
      _$AuthenticationRemoteModelImpl _value,
      $Res Function(_$AuthenticationRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthenticationRemoteModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationRemoteModelImpl implements _AuthenticationRemoteModel {
  const _$AuthenticationRemoteModelImpl({required this.token});

  factory _$AuthenticationRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationRemoteModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationRemoteModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRemoteModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthenticationRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRemoteModelImplCopyWith<_$AuthenticationRemoteModelImpl>
      get copyWith => __$$AuthenticationRemoteModelImplCopyWithImpl<
          _$AuthenticationRemoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationRemoteModel implements AuthenticationRemoteModel {
  const factory _AuthenticationRemoteModel({required final String token}) =
      _$AuthenticationRemoteModelImpl;

  factory _AuthenticationRemoteModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticationRemoteModelImpl.fromJson;

  @override
  String get token;

  /// Create a copy of AuthenticationRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationRemoteModelImplCopyWith<_$AuthenticationRemoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
