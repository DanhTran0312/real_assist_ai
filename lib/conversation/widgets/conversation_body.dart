import 'package:flutter/material.dart';

class ConversationBody extends StatelessWidget {
  const ConversationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey.shade100,
            height: 0,
          );
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _ConversationTile();
        },
      ),
    );
  }
}

class _ConversationTile extends StatelessWidget {
  const _ConversationTile();

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      title: Text(
        'Clause for renters best interest for a rental property',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      trailing: _PopupMenuButton(),
    );
  }
}

class _PopupMenuButton extends StatelessWidget {
  const _PopupMenuButton();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.arrow_drop_down_sharp,
        color: Colors.grey,
      ),
      itemBuilder: (context) {
        return [
          const PopupMenuItem<void>(
            child: ListTile(
              leading: Icon(
                Icons.edit_outlined,
                color: Colors.black,
              ),
              title: Text(
                'Edit Title',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const PopupMenuItem<void>(
            child: ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
              title: Text(
                'Delete Chat',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ];
      },
    );
  }
}
