import 'package:json_annotation/json_annotation.dart';

part 'sign_in_verify_request.g.dart';

@JsonSerializable()
class SignInVerifyRequest {
  String? token;
  String? code;


  SignInVerifyRequest({
    required this.token,
    required this.code,
  });

  factory SignInVerifyRequest.fromJson(Map<String, dynamic> json) => _$SignInVerifyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignInVerifyRequestToJson(this);
}
