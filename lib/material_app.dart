import 'package:assigment/screens/splach/screen/splach_screen_view.dart';
import 'package:flutter/material.dart';

class MaterialView extends StatelessWidget {
  const MaterialView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }
}
