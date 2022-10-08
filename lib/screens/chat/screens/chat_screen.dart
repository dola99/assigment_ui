import 'package:assigment/constant/constant.dart';
import 'package:assigment/screens/chat/widgets/bottom_navigation.dart';
import 'package:assigment/screens/chat/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationBarChatScreen(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Constant.verticalPadding),
        child: ListViewOfChat(),
      ),
    );
  }
}
