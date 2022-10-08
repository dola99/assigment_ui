import 'package:assigment/constant/constant.dart';
import 'package:assigment/screens/get_start/widgets/bottom_container.dart';
import 'package:assigment/screens/get_start/widgets/text_center_container.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: Constant.verticalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(child: CenterTextContainer()),
            BottomContainerGetStatrScreen()
          ],
        ),
      ),
    );
  }
}
