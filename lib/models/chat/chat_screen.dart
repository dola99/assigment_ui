class ChatModel {
  late int id;
  late String message;
  late bool isChatBot;
  late bool isSelectionItem;
  late List<SelectionItem>? selectionList;

  ChatModel({
    this.isChatBot = false,
    this.isSelectionItem = false,
    required this.message,
    this.selectionList,
    required this.id,
  });
}

class SelectionItem {
  late String selectionTitle;
  late bool isSelected;
  SelectionItem({this.isSelected = false, required this.selectionTitle});
}
