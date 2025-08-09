import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selected = 0;

  final List<Widget> pageList = [
    HomeScreen(),
    Scaffold(
      body: Center(child: Text('Search Page', style: TextStyle(fontSize: 22))),
    ),
    Scaffold(
      body: Center(child: Text('Cart Page', style: TextStyle(fontSize: 22))),
    ),
    Scaffold(
      body: Center(child: Text('Profile Page', style: TextStyle(fontSize: 22))),
    ),
  ];

  void selectPage(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        selectedItemColor: Colors.blue,
        unselectedItemColor: kSplashColor,
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
