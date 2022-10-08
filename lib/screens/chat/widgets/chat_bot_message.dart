import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/models/chat/chat_screen.dart';
import 'package:assigment/screens/chat/widgets/selection_container.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CahtBotMessage extends StatelessWidget {
  final String messageText;
  final bool isSelection;
  final List<SelectionItem>? selectionList;
  const CahtBotMessage(
      {super.key,
      required this.messageText,
      this.isSelection = false,
      this.selectionList});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.greyChatbotColor),
                child: Center(
                  child: Image.asset('${Constant.imagePath}chatbot.png'),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    color: AppColors.greyChatbotColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: CustomText(
                      text: messageText,
                      color: AppColors.textBlackColor,
                      size: 12,
                      fontFamily: FontUtils.poppinsFont),
                ),
              ),
            ],
          ),
          isSelection
              ? Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: selectionList!.length,
                        itemBuilder: ((context, index) {
                          return SelectionContainerChat(
                              isSelected: selectionList![index].isSelected,
                              titleOfSelection:
                                  selectionList![index].selectionTitle);
                        })),
                    const SizedBox(
                      height: 8,
                    ),
                    const CustomText(
                        text: 'Say Done, Or Press Send to Apply',
                        color: Color(0xff999999),
                        size: 14,
                        fontFamily: FontUtils.poppinsFont)
                  ],
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
