import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/models/category/category_model.dart';
import 'package:assigment/screens/home/widgets/category_item.dart';
import 'package:flutter/material.dart';

class BottomSheetCategory extends StatelessWidget {
  const BottomSheetCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isDismissible: true,
            isScrollControlled: true,
            enableDrag: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            useRootNavigator: true,
            builder: (context) {
              return Container(
                height: 700,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                          color: AppColors.greyChatbotColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: categoryList.length,
                          itemBuilder: ((context, index) {
                            return CategoryItem(category: categoryList[index]);
                          })),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          width: 50,
          height: 10,
          decoration: BoxDecoration(
              color: AppColors.greyChatbotColor,
              borderRadius: BorderRadius.circular(10)),
        ));
  }
}
