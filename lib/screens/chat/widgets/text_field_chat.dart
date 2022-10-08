import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:flutter/material.dart';

class TextFieldChatScreen extends StatelessWidget {
  const TextFieldChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.containerGreyColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('${Constant.iconPath}earth.png'),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type something ....',
                    hintStyle: TextStyle(
                        fontFamily: FontUtils.poppinsFont,
                        fontSize: 12,
                        color: AppColors.greyChatbotMessageColor)),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset('${Constant.iconPath}Voice.png'),
          ],
        ),
      ),
    );
  }
}
