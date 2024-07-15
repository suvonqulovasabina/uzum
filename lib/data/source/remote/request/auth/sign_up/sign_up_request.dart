import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest {
  String? phone;
  String? password;
  @JsonKey(name: 'first-name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'born-date')
  String? bornDate;
  String? gender;

  SignUpRequest({
    required this.phone,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.bornDate,
    required this.gender,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
