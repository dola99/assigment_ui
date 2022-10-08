import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem(
      {super.key,
      required this.imagePath,
      required this.rate,
      required this.name,
      required this.speacilest});
  final String imagePath;
  final double rate;
  final String name;
  final String speacilest;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 242,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 128,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.fill),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('${Constant.imagePath}star.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                      text: '($rate)',
                      color: AppColors.notSelectedColor,
                      size: 11,
                      fontFamily: FontUtils.poppinsFont)
                ],
              ),
              Image.asset('${Constant.imagePath}love.png'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomText(
              text: name,
              color: AppColors.textBlackColor,
              size: 12,
              fontFamily: FontUtils.poppinsFont),
          const SizedBox(
            height: 10,
          ),
          CustomText(
              text: speacilest,
              color: AppColors.greyChatbotMessageColor,
              size: 12,
              fontFamily: FontUtils.poppinsFont)
        ],
      ),
    );
  }
}
