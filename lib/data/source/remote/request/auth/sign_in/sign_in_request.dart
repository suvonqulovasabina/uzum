import 'package:json_annotation/json_annotation.dart';

part 'sign_in_request.g.dart';

@JsonSerializable()
class SignInRequest {
  String? phone;
  String? password;

  SignInRequest({
    required this.phone,
    required this.password,
  });

  factory SignInRequest.fromJson(Map<String, dynamic> json) => _$SignInRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}
