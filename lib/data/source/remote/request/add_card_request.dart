import 'package:json_annotation/json_annotation.dart';

part 'add_card_request.g.dart';

@JsonSerializable()
class AddCardRequest {
  @JsonKey(name: "pan")
  final String  pan;
  @JsonKey(name: "expired-year")
  final String expired;


  @JsonKey(name: 'expired-month')
  final String expiredMonth;

  @JsonKey(name: 'name')
  final String name;

  AddCardRequest({
    required this.pan,
    required this.expired,
    required this.expiredMonth,
    required this.name,
  });

  factory AddCardRequest.fromJson(Map<String, dynamic> json) => _$AddCardRequestFromJson(json);
  Map<String, dynamic> toJson() => _$AddCardRequestToJson(this);
}
