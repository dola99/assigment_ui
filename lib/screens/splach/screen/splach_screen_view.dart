import 'package:assigment/constant/constant.dart';
import 'package:assigment/screens/splach/widgets/bottom_container.dart';
import 'package:assigment/screens/splach/widgets/logo_container.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('${Constant.imagePath}Start.png'),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: Constant.verticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(child: LogoContainer()),
              Align(alignment: Alignment.bottomCenter, child: BottomContainer())
            ],
          ),
        ),
      ),
    );
  }
}
