import 'package:json_annotation/json_annotation.dart';

part 'single_token.g.dart';

@JsonSerializable()
class SingleToken {
  String? token;

  SingleToken({required this.token});

  factory SingleToken.fromJson(Map<String, dynamic> json) => _$SingleTokenFromJson(json);

  Map<String, dynamic> toJson() => _$SingleTokenToJson(this);
}
