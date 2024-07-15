// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTokenRequest _$UpdateTokenRequestFromJson(Map<String, dynamic> json) =>
    UpdateTokenRequest(
      refreshToken: json['refresh-token'] as String?,
    );

Map<String, dynamic> _$UpdateTokenRequestToJson(UpdateTokenRequest instance) =>
    <String, dynamic>{
      'refresh-token': instance.refreshToken,
    };
