import 'package:json_annotation/json_annotation.dart';

part 'sign_in_resend_request.g.dart';

@JsonSerializable()
class SignInResendRequest {
  String? token;

  SignInResendRequest({
    required this.token,
  });

  factory SignInResendRequest.fromJson(Map<String, dynamic> json) => _$SignInResendRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignInResendRequestToJson(this);
}
