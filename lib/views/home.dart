import 'package:flutter/material.dart';
import 'package:ui_ux_design_1/screen/cart_screen.dart';
import 'package:ui_ux_design_1/screen/home_screen.dart';
import 'package:ui_ux_design_1/screen/profile_screen.dart';
import 'package:ui_ux_design_1/screen/setting_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          showSelectedLabels: true,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 1,
          backgroundColor: const Color(0xfff8f8f8),
          title: const Text(
            "Ecommerce",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              color: Colors.red,
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade100,
        body: selectedIndex == 0
            ? const HomeScreen()
            : selectedIndex == 1
                ? const SettingScreen()
                : selectedIndex == 2
                    ? const PorfileScreen()
                    : const CartScreen(),
      ),
    );
  }
}
