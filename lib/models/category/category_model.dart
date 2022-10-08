import 'package:assigment/constant/constant.dart';

class Category {
  late String imageAsset;
  late String categoryTitle;
  late int countExperts;
  Category(
      {required this.categoryTitle,
      required this.countExperts,
      required this.imageAsset});
}

List<Category> categoryList = [
  Category(
      categoryTitle: 'Information Technology',
      countExperts: 23,
      imageAsset: '${Constant.imagePath}Group 114.png'),
  Category(
      categoryTitle: 'Supply Chain',
      countExperts: 12,
      imageAsset: '${Constant.imagePath}Group 115.png'),
  Category(
      categoryTitle: 'Security',
      countExperts: 14,
      imageAsset: '${Constant.imagePath}Group 116.png'),
  Category(
      categoryTitle: 'Human Resource',
      countExperts: 8,
      imageAsset: '${Constant.imagePath}Group 117.png'),
  Category(
      categoryTitle: 'Immigration',
      countExperts: 18,
      imageAsset: '${Constant.imagePath}Group 118.png'),
  Category(
      categoryTitle: 'Translation',
      countExperts: 3,
      imageAsset: '${Constant.imagePath}Group 119.png'),
];
