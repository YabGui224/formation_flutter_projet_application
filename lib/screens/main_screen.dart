import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/screens/home.dart';
import 'package:project_1/screens/my_order.dart';
import 'package:project_1/screens/profile.dart';
import 'package:project_1/screens/saved.dart';

class MainScreen extends StatefulWidget {
 MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pages = [
    Home(),
    MyOrder(),
    SavedScreen(),
    ProfileScreen()
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),  label:'Home', backgroundColor: AppColors.primary, ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'My Order', backgroundColor: AppColors.primary,),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Saved', backgroundColor: AppColors.primary),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: 'Profile', backgroundColor: AppColors.primary),
        ],
        selectedItemColor: AppColors.tabColor ,
        showSelectedLabels: true,
        currentIndex: currentPageIndex,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
      ),
    );
  }
}