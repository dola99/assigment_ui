import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/screens/home/widgets/recommended_item.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class RecommandedExpertedContainer extends StatelessWidget {
  const RecommandedExpertedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                  text: 'Recommended Experts',
                  color: AppColors.textBlackColor,
                  size: 14,
                  fontFamily: FontUtils.poppinsFont),
              Image.asset('${Constant.imagePath}more.png')
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 242,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                RecommendedItem(
                  imagePath: '${Constant.imagePath}960x0.png',
                  rate: 5.0,
                  name: 'Kareem Adel',
                  speacilest: 'Supply Chain',
                ),
                SizedBox(
                  width: 12,
                ),
                RecommendedItem(
                  imagePath: '${Constant.imagePath}960x0 (1).png',
                  rate: 4.9,
                  name: 'Merna Adel',
                  speacilest: 'Supply Chain',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
