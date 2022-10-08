import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/screens/home/widgets/online_item.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class OnlineExpertContainer extends StatelessWidget {
  const OnlineExpertContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                  text: 'Online Experts',
                  color: AppColors.textBlackColor,
                  size: 14,
                  fontFamily: FontUtils.poppinsFont),
              Image.asset('${Constant.imagePath}more.png')
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SizedBox(
            height: 90,
            child: ListView.builder(
                itemCount: 12,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const OnlineItem();
                })),
          ),
        )
      ],
    );
  }
}
