import 'package:openai_client/openai_client.dart';
import 'package:real_assist_ai/chat/data/models/message.dart';

class ChatRepository {
  ChatRepository({
    required OpenAIClient openAIClient,
  }) : _openAIClient = openAIClient;

  final OpenAIClient _openAIClient;

  Future<Message> getResponseAsMessage(String prompt) async {
    final response = await _openAIClient.completions
        .create(
          model: 'text-davinci-003',
          prompt: prompt,
          maxTokens: 200,
        )
        .data;

    final message = response.choices.first.text.replaceAll('\n\n', '');
    print('message: $message');
    return Message(
      message: message,
      timeSent: response.created,
      senderId: 'bot',
      receiverId: 'user',
    );
  }
}
