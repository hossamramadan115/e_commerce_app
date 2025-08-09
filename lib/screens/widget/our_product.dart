import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/widget/custom_cart.dart';

class OurProduct extends StatelessWidget {
  const OurProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.only(top: screenHeight * 0.07), // 2% من ارتفاع الشاشة
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 70,
      ),
      itemBuilder: (context, index) {
        return const CustomCard();
      },
    );
  }
}
