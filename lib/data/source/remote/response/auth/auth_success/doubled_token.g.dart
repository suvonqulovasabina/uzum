// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doubled_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoubledToken _$DoubledTokenFromJson(Map<String, dynamic> json) => DoubledToken(
      refreshToken: json['refresh-token'] as String?,
      accessToken: json['access-token'] as String?,
    );

Map<String, dynamic> _$DoubledTokenToJson(DoubledToken instance) =>
    <String, dynamic>{
      'refresh-token': instance.refreshToken,
      'access-token': instance.accessToken,
    };
