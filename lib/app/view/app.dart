import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/chat.dart';
import 'package:real_assist_ai/conversation/view/conversation_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const _ResponsiveWidget(),
    );
  }
}

class _ResponsiveWidget extends StatelessWidget {
  const _ResponsiveWidget();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1400) {
          return const _ChatPageLarge(
            chatPageFlex: 4,
            conversationPageFlex: 1,
          );
        } else if (constraints.maxWidth > 1000 && constraints.maxWidth < 1400) {
          return const _ChatPageLarge(
            chatPageFlex: 3,
            conversationPageFlex: 1,
          );
        } else if (constraints.maxWidth > 720 && constraints.maxWidth < 1000) {
          return const _ChatPageLarge(
            chatPageFlex: 3,
            conversationPageFlex: 2,
          );
        } else {
          return const ChatPage();
        }
      },
    );
  }
}

class _ChatPageLarge extends StatelessWidget {
  const _ChatPageLarge({
    required this.chatPageFlex,
    required this.conversationPageFlex,
  });

  final int chatPageFlex;
  final int conversationPageFlex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: chatPageFlex,
            child: const ChatPage(
              hideActions: true,
            ),
          ),
          Expanded(
            flex: conversationPageFlex,
            child: const ConversationPage(),
          ),
        ],
      ),
    );
  }
}
