import 'package:assigment/constant/constant.dart';
import 'package:flutter/material.dart';

class AppBarhomeScreen extends StatelessWidget {
  const AppBarhomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('${Constant.imagePath}avatar.png'),
            ),
            SizedBox(
                width: 79,
                height: 18,
                child: Image.asset('${Constant.imagePath}logo.png')),
            SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('${Constant.imagePath}Search.png')),
          ],
        ),
      ),
    );
  }
}
