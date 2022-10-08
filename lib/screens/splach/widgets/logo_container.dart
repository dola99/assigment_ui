import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final px = MediaQuery.of(context).devicePixelRatio;
    return SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('${Constant.imagePath}logo.png'),
          SizedBox(
            height: height * .028,
          ),
          CustomText(
              text: 'Expert From Every Planet',
              color: AppColors.textGreyColor,
              size: 50 / px,
              fontFamily: FontUtils.poppinsFont)
        ],
      ),
    );
  }
}
