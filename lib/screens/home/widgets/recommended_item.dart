import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/controllers/home/home_cubit.dart';
import 'package:assigment/models/recommanded/customer_model.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    super.key,
    required this.customerModel,
    required this.index,
  });
  final int index;
  final CustomerModel customerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 242,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 128,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(customerModel.imagePath),
                    fit: BoxFit.fill),
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
                      text: '(${customerModel.rate})',
                      color: AppColors.notSelectedColor,
                      size: 11,
                      fontFamily: FontUtils.poppinsFont)
                ],
              ),
              GestureDetector(
                onTap: () {
                  HomeCubit.get(context)
                      .changeStatusFavorite(customerModel.isFavorite, index);
                },
                child: customerModel.isFavorite
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Image.asset('${Constant.imagePath}love.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomText(
              text: customerModel.name,
              color: AppColors.textBlackColor,
              size: 12,
              fontFamily: FontUtils.poppinsFont),
          const SizedBox(
            height: 10,
          ),
          CustomText(
              text: customerModel.speacilist,
              color: AppColors.greyChatbotMessageColor,
              size: 12,
              fontFamily: FontUtils.poppinsFont)
        ],
      ),
    );
  }
}
