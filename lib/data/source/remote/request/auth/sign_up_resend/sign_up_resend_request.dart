import 'package:json_annotation/json_annotation.dart';

part 'sign_up_resend_request.g.dart';

@JsonSerializable()
class SignUpResendRequest {
  String? token;


  SignUpResendRequest({
    required this.token,
  });

  factory SignUpResendRequest.fromJson(Map<String, dynamic> json) => _$SignUpResendRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpResendRequestToJson(this);
}
