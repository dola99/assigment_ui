import 'package:assigment/Material_app.dart';
import 'package:assigment/bootstrap.dart';
import 'package:assigment/constant/color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppColors().statusBarColor;
  bootstrap(() => const MaterialView());
}
