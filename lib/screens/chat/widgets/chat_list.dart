import 'package:assigment/controllers/chat_cubit.dart';
import 'package:assigment/controllers/chat_status.dart';
import 'package:assigment/models/chat/chat_screen.dart';
import 'package:assigment/screens/chat/widgets/chat_bot_message.dart';
import 'package:assigment/screens/chat/widgets/user_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewOfChat extends StatelessWidget {
  const ListViewOfChat({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatStatus>(
        listener: ((context, state) {}),
        builder: ((context, state) {
          final cubit = ChatCubit.get(context);
          final chatList = cubit.chatList.reversed.toList();

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 40),
            child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  if (chatList[index].isChatBot) {
                    return ChatBotMessage(
                      chatModel: chatList[index],
                    );
                  } else {
                    return UserMessage(messageText: chatList[index].message);
                  }
                }),
          );
        }));
  }
}
