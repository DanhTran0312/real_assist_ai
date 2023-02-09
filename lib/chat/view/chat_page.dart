import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/cubit/cubit.dart';
import 'package:real_assist_ai/chat/widgets/chat_body.dart';
import 'package:real_assist_ai/theme/theme.dart';

/// {@template chat_page}
/// A description for ChatPage
/// {@endtemplate}
class ChatPage extends StatelessWidget {
  /// {@macro chat_page}
  const ChatPage({super.key, this.hideActions = false});

  /// The static route for ChatPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const ChatPage());
  }

  final bool hideActions;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        backgroundColor: lightScaffoldBackgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: _CustomAppBar(
            hideActions: hideActions,
          ),
        ),
        body: const ChatView(),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({
    this.hideActions = false,
  });

  final bool hideActions;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: SafeArea(
          child: ListTile(
            leading: const _MenuButton(),
            title: Text(
              'Real Assist AI',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            subtitle: Text(
              'This is a private message, between you and Assistant',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.black45,
                  ),
            ),
            trailing: hideActions ? null : const _MessagesButton(),
          ),
        ),
      ),
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
