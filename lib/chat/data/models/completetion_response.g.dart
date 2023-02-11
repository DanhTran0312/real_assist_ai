// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completetion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletetionResponse _$CompletetionResponseFromJson(
  Map<String, dynamic> json,
) =>
    CompletetionResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      usage: Map<String, int>.from(json['usage'] as Map),
    );

Map<String, dynamic> _$CompletetionResponseToJson(
  CompletetionResponse instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
    };
