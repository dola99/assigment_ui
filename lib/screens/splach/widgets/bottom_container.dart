import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/core/navigation.dart';
import 'package:assigment/screens/get_start/screens/get_start_screen.dart';
import 'package:assigment/widget/custom_button.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

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
                  widget: const GetStartedScreen(), context: context);
            },
            textButton: 'Get Started',
            textColor: AppColors.textWhiteColor,
            sizeTextButton: 18,
            fontFamily: FontUtils.poppinsFont,
            buttonColor: AppColors.mainColor,
            height: 55,
            weight: double.infinity,
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomText(
                  text: 'Don’t have an account? SignUp',
                  color: AppColors.textGreyColor,
                  size: 12,
                  fontFamily: FontUtils.poppinsFont),
              CustomText(
                  text: 'SignUp',
                  color: AppColors.mainColor,
                  size: 12,
                  fontFamily: FontUtils.poppinsFont),
            ],
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
