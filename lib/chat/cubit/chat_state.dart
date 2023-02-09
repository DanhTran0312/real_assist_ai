part of 'chat_cubit.dart';

/// {@template chat}
/// ChatState description
/// {@endtemplate}
class ChatState extends Equatable {
  /// {@macro chat}
  const ChatState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current ChatState with property changes
  ChatState copyWith({
    String? customProperty,
  }) {
    return ChatState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}
/// {@template chat_initial}
/// The initial state of ChatState
/// {@endtemplate}
class ChatInitial extends ChatState {
  /// {@macro chat_initial}
  const ChatInitial() : super();
}
