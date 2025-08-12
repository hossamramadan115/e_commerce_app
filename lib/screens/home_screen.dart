import 'package:e_commerce_app/screens/widget/our_product.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> categories = [
    {'icon': Icons.smartphone, 'title': 'Iphone'},
    {'icon': Icons.computer_outlined, 'title': 'Laptop'},
    {'icon': Icons.watch, 'title': 'Watches'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('SnapCart', style: AppStyless.styleBold24),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: categories.map((category) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(category['icon']),
                      const SizedBox(height: 8),
                      Text(category['title']),
                    ],
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),
              Text('Our Product', style: AppStyless.styleBold24),
              const SizedBox(height: 25),
              const OurProduct(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
