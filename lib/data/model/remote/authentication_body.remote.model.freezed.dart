// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_body.remote.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationBody _$AuthenticationBodyFromJson(Map<String, dynamic> json) {
  return _AuthenticationBody.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this AuthenticationBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationBodyCopyWith<AuthenticationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationBodyCopyWith<$Res> {
  factory $AuthenticationBodyCopyWith(
          AuthenticationBody value, $Res Function(AuthenticationBody) then) =
      _$AuthenticationBodyCopyWithImpl<$Res, AuthenticationBody>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthenticationBodyCopyWithImpl<$Res, $Val extends AuthenticationBody>
    implements $AuthenticationBodyCopyWith<$Res> {
  _$AuthenticationBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationBodyImplCopyWith<$Res>
    implements $AuthenticationBodyCopyWith<$Res> {
  factory _$$AuthenticationBodyImplCopyWith(_$AuthenticationBodyImpl value,
          $Res Function(_$AuthenticationBodyImpl) then) =
      __$$AuthenticationBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthenticationBodyImplCopyWithImpl<$Res>
    extends _$AuthenticationBodyCopyWithImpl<$Res, _$AuthenticationBodyImpl>
    implements _$$AuthenticationBodyImplCopyWith<$Res> {
  __$$AuthenticationBodyImplCopyWithImpl(_$AuthenticationBodyImpl _value,
      $Res Function(_$AuthenticationBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthenticationBodyImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationBodyImpl implements _AuthenticationBody {
  const _$AuthenticationBodyImpl({required this.email, required this.password});

  factory _$AuthenticationBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationBodyImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthenticationBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationBodyImplCopyWith<_$AuthenticationBodyImpl> get copyWith =>
      __$$AuthenticationBodyImplCopyWithImpl<_$AuthenticationBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationBodyImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationBody implements AuthenticationBody {
  const factory _AuthenticationBody(
      {required final String email,
      required final String password}) = _$AuthenticationBodyImpl;

  factory _AuthenticationBody.fromJson(Map<String, dynamic> json) =
      _$AuthenticationBodyImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of AuthenticationBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationBodyImplCopyWith<_$AuthenticationBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
