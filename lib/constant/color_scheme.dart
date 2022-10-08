import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  final statusBarColor = SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  static const mainColor = Color.fromRGBO(22, 145, 155, 1);
  static const textGreyColor = Color.fromRGBO(95, 95, 95, 1);
  static const textBlackColor = Color.fromRGBO(0, 0, 0, 1);
  static const textWhiteColor = Colors.white;
  static const greyChatbotColor = Color.fromRGBO(216, 216, 216, 1);
  static const greyChatbotMessageColor = Color.fromRGBO(119, 131, 143, 1);
  static const notSelectedColor = Color.fromRGBO(207, 217, 222, 1);
  static const containerGreyColor = Color.fromRGBO(246, 247, 248, 1);
}
