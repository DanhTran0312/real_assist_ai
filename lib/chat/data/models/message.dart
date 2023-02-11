import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

/// {@template message}
/// Message description
/// {@endtemplate}
@JsonSerializable()
class Message extends Equatable {
  /// {@macro message}
  const Message({
    required this.message,
    required this.timeSent,
    required this.senderId,
    required this.receiverId,
  });

  /// Creates a Message from Json map
  factory Message.fromJson(Map<String, dynamic> data) =>
      _$MessageFromJson(data);

  /// A description for message
  final String message;

  /// A description for timeSent
  final int timeSent;

  /// A description for senderId
  final String senderId;

  /// A description for receiverId
  final String receiverId;

  /// Creates a copy of the current Message with property changes
  Message copyWith({
    String? message,
    int? timeSent,
    String? senderId,
    String? receiverId,
  }) {
    return Message(
      message: message ?? this.message,
      timeSent: timeSent ?? this.timeSent,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
    );
  }

  // ignore: prefer_constructors_over_static_methods
  static Message defaultResponse() {
    return Message(
      message: 'Hi, I am Real Assist AI. How can I help you?',
      timeSent: DateTime.now().millisecondsSinceEpoch,
      senderId: 'bot',
      receiverId: 'user',
    );
  }

  @override
  List<Object?> get props => [
        message,
        timeSent,
        senderId,
        receiverId,
      ];

  /// Creates a Json map from a Message
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
