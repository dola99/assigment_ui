class ChatModel {
  late String message;
  late bool isChatBot;
  late bool isSelectionItem;
  late List<SelectionItem>? selectionList;

  ChatModel({
    this.isChatBot = false,
    this.isSelectionItem = false,
    required this.message,
    this.selectionList,
  });
}

class SelectionItem {
  late String selectionTitle;
  late bool isSelected;
  SelectionItem({this.isSelected = false, required this.selectionTitle});
}

List<ChatModel> chatList = [
  ChatModel(
      message: 'Hi, Whats You Name Firstname?',
      isChatBot: true,
      isSelectionItem: false),
  ChatModel(message: 'Abdalla', isChatBot: false, isSelectionItem: false),
  ChatModel(
      message: 'Ok, Abdalla Whats Your Lastname?',
      isChatBot: true,
      isSelectionItem: false),
  ChatModel(message: 'Salah', isChatBot: false, isSelectionItem: false),
  ChatModel(
      message: "Mr Abdalla Salah, What's your Title? ",
      isChatBot: true,
      isSelectionItem: false),
  ChatModel(
      message: 'Front-end Developer', isChatBot: false, isSelectionItem: false),
  ChatModel(
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
