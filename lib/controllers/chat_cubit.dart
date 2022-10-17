import 'package:assigment/controllers/chat_status.dart';
import 'package:assigment/models/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatCubit extends Cubit<ChatStatus> {
  ChatCubit() : super(ChatIntialStatus());
  TextEditingController textEditingController = TextEditingController();
  List<ChatModel> chatList = [
    ChatModel(
        id: 1,
        message: 'Hi, Whats You Name Firstname?',
        isChatBot: true,
        isSelectionItem: false),
    ChatModel(
        id: 2, message: 'Abdalla', isChatBot: false, isSelectionItem: false),
    ChatModel(
        id: 3,
        message: 'Ok, Abdalla Whats Your Lastname?',
        isChatBot: true,
        isSelectionItem: false),
    ChatModel(
        id: 4, message: 'Salah', isChatBot: false, isSelectionItem: false),
    ChatModel(
        id: 5,
        message: "Mr Abdalla Salah, What's your Title? ",
        isChatBot: true,
        isSelectionItem: false),
    ChatModel(
        id: 6,
        message: 'Front-end Developer',
        isChatBot: false,
        isSelectionItem: false),
    ChatModel(
        id: 7,
        message: 'What Categories you will need expert In?',
        isChatBot: true,
        isSelectionItem: true,
        selectionList: [
          SelectionItem(selectionTitle: 'Secuity', isSelected: true),
          SelectionItem(selectionTitle: 'Supply Chain', isSelected: false),
          SelectionItem(
              selectionTitle: 'Information Technology', isSelected: false),
          SelectionItem(selectionTitle: 'Human Resource', isSelected: false),
          SelectionItem(selectionTitle: 'Business Research', isSelected: true),
        ]),
  ];

  static ChatCubit get(BuildContext context) => BlocProvider.of(context);

  void submitNewMessage() {
    chatList.add(ChatModel(
        id: chatList.length + 1,
        isChatBot: false,
        isSelectionItem: false,
        message: textEditingController.text));
    textEditingController.clear();
    emit(NewMessageSubmited());
  }

  void checkBoxChangeStatus(int id, int indexOfselection) {
    chatList
            .firstWhere((element) => element.id == id)
            .selectionList![indexOfselection]
            .isSelected =
        !chatList
            .firstWhere((element) => element.id == id)
            .selectionList![indexOfselection]
            .isSelected;
    emit(CheckBoxChangedStatus());
  }
}
