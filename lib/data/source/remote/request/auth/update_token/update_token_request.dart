import 'package:json_annotation/json_annotation.dart';

part 'update_token_request.g.dart';

@JsonSerializable()
class UpdateTokenRequest {
  @JsonKey(name: 'refresh-token')
  String? refreshToken;

  UpdateTokenRequest({
    required this.refreshToken,
  });

  factory UpdateTokenRequest.fromJson(Map<String, dynamic> json) => _$UpdateTokenRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateTokenRequestToJson(this);
}
