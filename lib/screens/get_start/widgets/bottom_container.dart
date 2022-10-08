import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/core/navigation.dart';
import 'package:assigment/screens/chat/screens/chat_screen.dart';
import 'package:assigment/widget/custom_button.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class BottomContainerGetStatrScreen extends StatelessWidget {
  const BottomContainerGetStatrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Constant.horizantelPadding),
      child: Column(
        children: [
          CustomButton(
            onTap: () {
              CustomFunctions.pushScreen(
                  widget: const ChatScreen(), context: context);
            },
            textButton: 'Next',
            textColor: AppColors.textWhiteColor,
            sizeTextButton: 18,
            fontFamily: FontUtils.poppinsFont,
            buttonColor: AppColors.mainColor,
            height: 55,
            weight: 147,
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('${Constant.iconPath}earth.png'),
              const SizedBox(
                width: 7,
              ),
              const CustomText(
                  text: 'English',
                  color: AppColors.textBlackColor,
                  size: 12,
                  fontFamily: FontUtils.poppinsFont),
            ],
          ),
        ],
      ),
    );
  }
}
