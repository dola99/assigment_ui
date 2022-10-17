import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/constant/fonts_utils.dart';
import 'package:assigment/controllers/chat/chat_cubit.dart';
import 'package:assigment/models/chat/chat_screen.dart';
import 'package:assigment/screens/chat/widgets/selection_container.dart';
import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ChatBotMessage extends StatelessWidget {
  final ChatModel chatModel;

  const ChatBotMessage({
    super.key,
    required this.chatModel,
  });

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
                      text: chatModel.message,
                      color: AppColors.textBlackColor,
                      size: 12,
                      fontFamily: FontUtils.poppinsFont),
                ),
              ),
            ],
          ),
          chatModel.isSelectionItem
              ? Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: chatModel.selectionList!.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              ChatCubit.get(context)
                                  .checkBoxChangeStatus(chatModel.id, index);
                            },
                            child: SelectionContainerChat(
                                isSelected:
                                    chatModel.selectionList![index].isSelected,
                                titleOfSelection: chatModel
                                    .selectionList![index].selectionTitle),
                          );
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
