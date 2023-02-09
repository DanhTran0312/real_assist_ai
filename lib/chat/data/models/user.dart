import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_assist_ai/chat/data/models/models.dart';

part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@JsonSerializable()
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.name,
    required this.id,
    this.conversations,
  });

  /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// A description for name
  final String name;

  /// A description for id
  final String id;

  /// A description for conversations
  final List<Conversation>? conversations;

  /// Creates a copy of the current User with property changes
  User copyWith({
    String? name,
    String? id,
    List<Conversation>? Function()? conversations,
  }) {
    return User(
      name: name ?? this.name,
      id: id ?? this.id,
      conversations:
          conversations != null ? conversations() : this.conversations,
    );
  }

  @override
  List<Object?> get props => [
        name,
        id,
        conversations,
      ];

  /// Creates a Json map from a User
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
