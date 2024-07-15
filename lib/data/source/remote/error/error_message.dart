import 'package:json_annotation/json_annotation.dart';

part 'error_message.g.dart';

@JsonSerializable()
class ErrorMessage {
  String? message;

  ErrorMessage({
    required this.message,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) => _$ErrorMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorMessageToJson(this);
}
