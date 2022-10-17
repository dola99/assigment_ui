import 'package:assigment/screens/home/widgets/appbar_home.dart';
import 'package:assigment/screens/home/widgets/bottom_sheet.dart';
import 'package:assigment/screens/home/widgets/online_expert.dart';
import 'package:assigment/screens/home/widgets/recommended_experts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: const [
                AppBarhomeScreen(),
                RecommandedExpertedContainer(),
                SizedBox(
                  height: 10,
                ),
                OnlineExpertContainer(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.15,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: BottomSheetCategory(),
              );
            },
          ),
        ],
      ),
    );
  }
}
