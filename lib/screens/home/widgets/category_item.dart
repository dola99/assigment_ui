import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/models/category/category_model.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 8, right: 8),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.greyChatbotColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(category.imageAsset),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    CustomText(
                        text: category.categoryTitle,
                        color: AppColors.textGreyColor,
                        size: 14,
                        fontFamily: FontUtils.poppinsFont),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomText(
                        text: '${category.countExperts} Experts',
                        color: AppColors.greyChatbotMessageColor,
                        size: 12,
                        fontFamily: FontUtils.poppinsFont),
                  ],
                )
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.greyChatbotMessageColor,
            ),
          ],
        ),
      ),
    );
  }
}
