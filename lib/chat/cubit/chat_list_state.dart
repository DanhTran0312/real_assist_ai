part of 'chat_list_cubit.dart';

abstract class ChatListState extends Equatable {
  const ChatListState({required this.messages});

  final List<Message> messages;

  @override
  List<Object> get props => [];
}

class ChatListInitial extends ChatListState {
  ChatListInitial() : super(messages: []);

  @override
  List<Object> get props => [];
}

class ChatListLoading extends ChatListState {
  const ChatListLoading({required super.messages});

  @override
  List<Object> get props => [messages];
}

class ChatListLoaded extends ChatListState {
  const ChatListLoaded({required super.messages});

  @override
  List<Object> get props => [messages];
}
