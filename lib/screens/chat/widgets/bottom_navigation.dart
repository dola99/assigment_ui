import 'package:assigment/constant/constant.dart';
import 'package:assigment/core/navigation.dart';
import 'package:assigment/screens/chat/widgets/text_field_chat.dart';
import 'package:assigment/screens/nav_home.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarChatScreen extends StatelessWidget {
  const BottomNavigationBarChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Expanded(child: TextFieldChatScreen()),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
                onTap: () {
                  CustomFunctions.pushScreen(
                      widget: const HomeNavigationbar(), context: context);
                },
                child: Image.asset('${Constant.iconPath}Send.png')),
          ],
        ),
      ),
    );
  }
}
