// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    SignUpRequest(
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      firstName: json['first-name'] as String?,
      lastName: json['last_name'] as String?,
      bornDate: json['born-date'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'first-name': instance.firstName,
      'last_name': instance.lastName,
      'born-date': instance.bornDate,
      'gender': instance.gender,
    };
