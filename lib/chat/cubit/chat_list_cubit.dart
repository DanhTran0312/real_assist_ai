import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:real_assist_ai/chat/data/models/models.dart';

part 'chat_list_state.dart';

class ChatListCubit extends Cubit<ChatListState> {
  ChatListCubit() : super(ChatListInitial());

  void addMessage(Message message) {
    emit(ChatListLoaded(messages: [...state.messages, message]));
  }
}
