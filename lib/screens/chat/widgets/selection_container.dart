import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class SelectionContainerChat extends StatelessWidget {
  final String titleOfSelection;
  final bool isSelected;
  const SelectionContainerChat(
      {super.key, this.isSelected = false, required this.titleOfSelection});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4, left: 50, top: 10),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isSelected
                    ? AppColors.mainColor
                    : AppColors.notSelectedColor),
            child: isSelected
                ? const Center(
                    child: Icon(
                    Icons.done,
                    color: AppColors.textWhiteColor,
                    size: 14,
                  ))
                : const SizedBox(),
          ),
          const SizedBox(
            width: 4,
          ),
          CustomText(
              text: titleOfSelection,
              color: AppColors.textBlackColor,
              size: 12,
              fontFamily: FontUtils.poppinsFont)
        ],
      ),
    );
  }
}
