import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/chat.dart';

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
        if (constraints.maxWidth > 800) {
          return Scaffold(
            body: Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: ChatPage(),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey.shade300,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent Chats',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: Colors.grey.shade100,
                                height: 0,
                              );
                            },
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                title: const Text(
                                  'Clause for renters best interest for a rental property',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                ),
                                trailing: PopupMenuButton(
                                  icon: const Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Colors.grey,
                                  ),
                                  itemBuilder: (context) {
                                    return [
                                      const PopupMenuItem(
                                        child: ListTile(
                                          leading: Icon(Icons.archive),
                                          title: Text('Archive Chat'),
                                        ),
                                      ),
                                      const PopupMenuItem(
                                        child: ListTile(
                                          leading: Icon(Icons.delete),
                                          title: Text('Delete Chat'),
                                        ),
                                      ),
                                    ];
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const ChatPage();
        }
      },
    );
  }
}
