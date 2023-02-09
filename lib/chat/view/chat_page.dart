import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/cubit/cubit.dart';
import 'package:real_assist_ai/chat/widgets/chat_body.dart';
import 'package:real_assist_ai/theme/theme.dart';

/// {@template chat_page}
/// A description for ChatPage
/// {@endtemplate}
class ChatPage extends StatelessWidget {
  /// {@macro chat_page}
  const ChatPage({super.key});

  /// The static route for ChatPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const ChatPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: const Scaffold(
        backgroundColor: lightScaffoldBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: _AppBar(),
        ),
        body: ChatView(),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: const Color(0xffefeef3).withOpacity(0.5),
      centerTitle: false,
      backgroundColor: Colors.white,
      leading: const _MenuButton(),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Real Assist AI',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'This is a private message, between you and Assistant',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 11,
            ),
          ),
        ],
      ),
      actions: const [
        _MessagesButton(),
      ],
    );
  }
}

class _MessagesButton extends StatelessWidget {
  const _MessagesButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.message_outlined,
        color: Colors.black87,
        size: 30,
      ),
      onPressed: () {},
    );
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.black87,
        size: 30,
      ),
      onPressed: () {},
    );
  }
}

/// {@template chat_view}
/// Displays the Body of ChatView
/// {@endtemplate}
class ChatView extends StatelessWidget {
  /// {@macro chat_view}
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatBody();
  }
}
