import 'package:assigment/constant/color_scheme.dart';
import 'package:assigment/constant/constant.dart';
import 'package:assigment/screens/home/screens/home_Screen.dart';
import 'package:flutter/material.dart';

class HomeNavigationbar extends StatefulWidget {
  const HomeNavigationbar({super.key});

  @override
  State<HomeNavigationbar> createState() => _HomeNavigationbarState();
}

class _HomeNavigationbarState extends State<HomeNavigationbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [const HomeScreen(), Container(), Container(), Container()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: screens),
      bottomNavigationBar: SizedBox(
        height: 87,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: AppColors.textWhiteColor,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Image.asset('${Constant.iconPath}Home.png'),
              icon: Image.asset('${Constant.iconPath}Home.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset('${Constant.iconPath}Stroke 1.png'),
              label: '',
              icon: Image.asset('${Constant.iconPath}Stroke 1.png'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset('${Constant.iconPath}Wallet.png'),
              label: '',
              icon: Image.asset('${Constant.iconPath}Wallet.png'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset('${Constant.iconPath}Profile.png'),
              label: '',
              icon: Image.asset('${Constant.iconPath}Profile.png'),
            ),
          ],
          elevation: 0.0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
