import 'package:json_annotation/json_annotation.dart';

part 'completetion_response.g.dart';

@JsonSerializable()
class CompletetionResponse {
  CompletetionResponse({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });
  factory CompletetionResponse.fromJson(Map<String, dynamic> json) =>
      _$CompletetionResponseFromJson(json);

  final String id;
  final String object;
  final int created;
  final String model;
  final List<Map<String, dynamic>> choices;
  final Map<String, int> usage;
}
