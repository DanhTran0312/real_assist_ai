import 'package:flutter/material.dart';
import 'package:real_assist_ai/chat/data/models/message.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    super.key,
    required this.message,
    required this.isMe,
  });

  final Message message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    final time = DateTime.fromMillisecondsSinceEpoch(message.timeSent);
    final timeString = '${time.hour}:${time.minute}';
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  constraints: const BoxConstraints(
                    maxWidth: 310,
                  ),
                  decoration: BoxDecoration(
                    color: isMe ? const Color(0xff304cef) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: isMe ? Radius.zero : const Radius.circular(15),
                      topLeft: isMe ? const Radius.circular(15) : Radius.zero,
                      bottomRight: const Radius.circular(15),
                      bottomLeft: const Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          message.message,
                          style: TextStyle(
                            color: isMe ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      if (isMe)
                        const SizedBox()
                      else
                        IconButton(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.zero,
                          splashRadius: 10,
                          onPressed: () {
                            // TODO: Copy message to clipboard
                          },
                          icon: const Icon(Icons.copy_outlined),
                          iconSize: 14,
                          color: Colors.black54,
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Text(
                    timeString,
                    style: const TextStyle(
                      color: Colors.black38,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
