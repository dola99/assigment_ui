import 'package:assigment/models/chat/chat_screen.dart';
import 'package:assigment/screens/chat/widgets/chat_bot_message.dart';
import 'package:assigment/screens/chat/widgets/user_message.dart';
import 'package:flutter/material.dart';

class ListViewOfChat extends StatelessWidget {
  const ListViewOfChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: ((context, index) {
          if (chatList[index].isChatBot) {
            return CahtBotMessage(
              messageText: chatList[index].message,
              isSelection: chatList[index].isSelectionItem,
              selectionList: chatList[index].selectionList,
            );
          } else {
            return UserMessage(messageText: chatList[index].message);
          }
        }),
      ),
    );
  }
}
