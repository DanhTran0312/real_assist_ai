import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/cubit/chat_list_cubit.dart';
import 'package:real_assist_ai/chat/data/models/message.dart';
import 'package:real_assist_ai/chat/data/repositories/chat_repository.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required ChatRepository chatRepository,
    required ChatListCubit chatListCubit,
  })  : _chatRepository = chatRepository,
        _chatListCubit = chatListCubit,
        super(ChatInitial()) {
    _chatListCubit.addMessage(state.responseMessage);
  }

  final ChatRepository _chatRepository;
  final ChatListCubit _chatListCubit;
  final TextEditingController textEditingController = TextEditingController();

  Future<void> getResponse() async {
    emit(ChatLoading(responseMessage: state.responseMessage));
    try {
      final prompt = textEditingController.text;
      textEditingController.clear();
      if (prompt.isEmpty) {
        emit(ChatLoaded(responseMessage: state.responseMessage));
        return;
      }
      _chatListCubit.addMessage(
        Message(
          message: prompt,
          timeSent: DateTime.now().microsecondsSinceEpoch,
          senderId: 'user',
          receiverId: 'bot',
        ),
      );
      final responseMessage = await _chatRepository.getResponseAsMessage(
        prompt,
      );
      emit(ChatLoaded(responseMessage: responseMessage));
      _chatListCubit.addMessage(responseMessage);
    } catch (e) {
      emit(ChatError(responseMessage: state.responseMessage));
    }
  }
}
