import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/controllers/home/home_cubit.dart';
import 'package:assigment/controllers/home/home_status.dart';
import 'package:assigment/screens/home/widgets/recommended_item.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommandedExpertedContainer extends StatelessWidget {
  const RecommandedExpertedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStatus>(
      listener: ((context, state) {}),
      builder: ((context, state) {
        final cubit = HomeCubit.get(context);
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
                child: ListView.builder(
                  itemCount: cubit.customerModelList.length,
                  itemBuilder: (context, index) {
                    return RecommendedItem(
                      customerModel: cubit.customerModelList[index],
                      index: index,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
