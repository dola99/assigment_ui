import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class OnlineItem extends StatelessWidget {
  const OnlineItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                ),
              ),
              const CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.greyChatbotColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomText(
              text: 'Niles',
              color: AppColors.textGreyColor,
              size: 13,
              fontFamily: FontUtils.poppinsFont),
        ],
      ),
    );
  }
}
