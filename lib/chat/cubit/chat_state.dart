part of 'chat_cubit.dart';

abstract class ChatState extends Equatable {
  const ChatState({required this.responseMessage});

  final Message responseMessage;

  @override
  List<Object> get props => [responseMessage];
}

class ChatInitial extends ChatState {
  ChatInitial() : super(responseMessage: Message.defaultResponse());

  @override
  List<Object> get props => [responseMessage];
}

class ChatLoading extends ChatState {
  const ChatLoading({required super.responseMessage});

  @override
  List<Object> get props => [responseMessage];
}

class ChatLoaded extends ChatState {
  const ChatLoaded({required super.responseMessage});

  @override
  List<Object> get props => [responseMessage];
}

class ChatError extends ChatState {
  const ChatError({required super.responseMessage});

  @override
  List<Object> get props => [responseMessage];
}
