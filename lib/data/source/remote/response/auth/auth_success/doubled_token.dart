import 'package:json_annotation/json_annotation.dart';

part 'doubled_token.g.dart';

@JsonSerializable()
class DoubledToken {
  @JsonKey(name: 'refresh-token')
  String? refreshToken;
  @JsonKey(name: 'access-token')
  String? accessToken;

  DoubledToken({
    required this.refreshToken,
    required this.accessToken,
  });

  factory DoubledToken.fromJson(Map<String, dynamic> json) => _$DoubledTokenFromJson(json);

  Map<String, dynamic> toJson() => _$DoubledTokenToJson(this);
}
