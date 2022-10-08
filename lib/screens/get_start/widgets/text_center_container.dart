import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CenterTextContainer extends StatelessWidget {
  const CenterTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            const SizedBox(
              width: 240,
              height: 134,
              child: CustomText(
                  text: '''

Hi, My name is Oranobot
I will always be there to help and assist you.

Say Start To go to Next.''',
                  color: AppColors.textBlackColor,
                  size: 15,
                  fontFamily: FontUtils.poppinsFont),
            ),
            SizedBox(
                width: 236,
                height: 256,
                child: Image.asset('${Constant.imagePath}shape.png'))
          ],
        ),
        SizedBox(
            width: 300,
            height: 200,
            child: Image.asset('${Constant.imagePath}robot.png')),
      ],
    );
  }
}
