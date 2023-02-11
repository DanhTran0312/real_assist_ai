import 'package:flutter/material.dart';
import 'package:openai_client/openai_client.dart';
import 'package:real_assist_ai/app/app.dart';
import 'package:real_assist_ai/chat/cubit/chat_cubit.dart';
import 'package:real_assist_ai/chat/cubit/chat_list_cubit.dart';
import 'package:real_assist_ai/chat/data/repositories/chat_repository.dart';

void main() {
  // Create the configuration
  const conf = OpenAIConfiguration(
    apiKey: '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',
  );

// Create a new client
  final openAIClient = OpenAIClient(
    configuration: conf,
    enableLogging: true,
  );

  final chatRepository = ChatRepository(
    openAIClient: openAIClient,
  );

  final chatListCubit = ChatListCubit();

  final chatCubit = ChatCubit(
    chatRepository: chatRepository,
    chatListCubit: chatListCubit,
  );
  runApp(
    App(
      chatCubit: chatCubit,
      chatListCubit: chatListCubit,
    ),
  );
}
