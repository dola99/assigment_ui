class CustomerModel {
  late String imagePath;
  late String name;
  late double rate;
  late String speacilist;
  late bool isFavorite;
  CustomerModel(
      {required this.imagePath,
      required this.name,
      required this.speacilist,
      required this.rate,
      this.isFavorite = false});
}
