// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInVerifyRequest _$SignInVerifyRequestFromJson(Map<String, dynamic> json) =>
    SignInVerifyRequest(
      token: json['token'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$SignInVerifyRequestToJson(
        SignInVerifyRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
    };
