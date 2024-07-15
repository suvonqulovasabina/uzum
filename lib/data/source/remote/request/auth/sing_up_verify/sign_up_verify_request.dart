import 'package:json_annotation/json_annotation.dart';

part 'sign_up_verify_request.g.dart';

@JsonSerializable()
class SignUpVerifyRequest {
  String? token;
  String? code;


  SignUpVerifyRequest({
    required this.token,
    required this.code,
  });

  factory SignUpVerifyRequest.fromJson(Map<String, dynamic> json) => _$SignUpVerifyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpVerifyRequestToJson(this);
}
