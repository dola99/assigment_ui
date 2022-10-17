import 'package:assigment/constant/constant.dart';
import 'package:assigment/screens/chat/widgets/bottom_navigation.dart';
import 'package:assigment/screens/chat/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Constant.verticalPadding),
            child: ListViewOfChat(),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: BottomNavigationBarChatScreen(),
          ),
        ],
      ),
    );
  }
}
