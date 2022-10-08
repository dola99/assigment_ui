import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  final String messageText;
  const UserMessage({super.key, required this.messageText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 14,
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: CustomText(
                  text: messageText,
                  color: AppColors.textWhiteColor,
                  size: 12,
                  fontFamily: FontUtils.poppinsFont),
            ),
          ),
          SizedBox(
            width: 38,
            height: 38,
            child: Center(
              child: Image.asset('${Constant.imagePath}read.png'),
            ),
          ),
        ],
      ),
    );
  }
}
