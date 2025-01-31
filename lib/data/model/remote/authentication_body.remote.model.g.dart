// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_body.remote.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationBodyImpl _$$AuthenticationBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationBodyImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthenticationBodyImplToJson(
        _$AuthenticationBodyImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
