import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/chat.dart';
import 'package:real_assist_ai/chat/data/models/message.dart';
import 'package:real_assist_ai/chat/widgets/privacy_chip.dart';

/// {@template chat_body}
/// Body of the ChatPage.
///
/// Add what it does
/// {@endtemplate}
class ChatBody extends StatelessWidget {
  /// {@macro chat_body}
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    final message = Message(
      message:
          'Lorem ipsum dolor sit amet, sit adipiscing elit. Lorem ipsum dolor sit amet, sit adipiscing elit',
      timeSent: DateTime.now().millisecondsSinceEpoch,
      senderId: 'Danh',
      receiverId: 'AI',
    );
    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: [
            CustomScrollView(
              reverse: true,
              slivers: [
                const SliverPadding(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                ),
                _ChatList(message: message),
                const SliverToBoxAdapter(
                  child: PrivacyChip(),
                ),
              ],
            ),
            const _CustomTextField(),
          ],
        ),
      ),
    );
  }
}

class _ChatList extends StatelessWidget {
  const _ChatList({
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ChatMessage(
              message: message,
              isMe: index.isEven,
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Message',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.attach_file),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff304cef),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                minimumSize: const Size(50, 50),
              ),
              child: const Icon(Icons.send_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
