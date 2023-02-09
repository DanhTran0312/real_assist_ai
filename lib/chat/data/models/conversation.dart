import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_assist_ai/chat/data/models/models.dart';

part 'conversation.g.dart';

/// {@template conversation}
/// Conversation description
/// {@endtemplate}
@JsonSerializable()
class Conversation extends Equatable {
  /// {@macro conversation}
  const Conversation({
    required this.userId1,
    required this.userId2,
    required this.messages,
    required this.conversationId,
    this.title = 'Default Title',
  });

  /// Creates a Conversation from Json map
  factory Conversation.fromJson(Map<String, dynamic> data) =>
      _$ConversationFromJson(data);

  /// A description for userId1
  final String userId1;

  /// A description for userId2
  final String userId2;

  /// A description for messages
  final List<Message> messages;

  final String conversationId;

  final String title;

  /// Creates a copy of the current Conversation with property changes
  Conversation copyWith({
    String? userId1,
    String? userId2,
    List<Message>? messages,
    String? conversationId,
    String? title,
  }) {
    return Conversation(
      userId1: userId1 ?? this.userId1,
      userId2: userId2 ?? this.userId2,
      messages: messages ?? this.messages,
      conversationId: conversationId ?? this.conversationId,
      title: title ?? this.title,
    );
  }

  @override
  List<Object?> get props => [
        userId1,
        userId2,
        messages,
        conversationId,
        title,
      ];

  /// Creates a Json map from a Conversation
  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}
