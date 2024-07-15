// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpVerifyRequest _$SignUpVerifyRequestFromJson(Map<String, dynamic> json) =>
    SignUpVerifyRequest(
      token: json['token'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$SignUpVerifyRequestToJson(
        SignUpVerifyRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
    };
