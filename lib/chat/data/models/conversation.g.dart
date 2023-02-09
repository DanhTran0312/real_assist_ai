// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
      userId1: json['userId1'] as String,
      userId2: json['userId2'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      conversationId: json['conversationId'] as String,
      title: json['title'] as String? ?? 'Default Title',
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'userId1': instance.userId1,
      'userId2': instance.userId2,
      'messages': instance.messages,
      'conversationId': instance.conversationId,
      'title': instance.title,
    };
