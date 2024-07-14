// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCardRequest _$AddCardRequestFromJson(Map<String, dynamic> json) =>
    AddCardRequest(
      pan: json['pan'] as String,
      expired: json['expired-year'] as String,
      expiredMonth: json['expired-month'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AddCardRequestToJson(AddCardRequest instance) =>
    <String, dynamic>{
      'pan': instance.pan,
      'expired-year': instance.expired,
      'expired-month': instance.expiredMonth,
      'name': instance.name,
    };
