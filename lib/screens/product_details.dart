import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              width: double.infinity,
              height: height * .4,
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1024px-Apple_logo_black.svg.png',
            ),
            SizedBox(height: height * .05),
            Text(
              'iphone',
              style: AppStyless.textFont20,
            ),
            SizedBox(height: height * .05),
            Text(
              'iphone pro max white',
              style: AppStyless.textFont20,
            ),
            SizedBox(height: height * .12),
            Expanded(
              child: Row(
                children: [
                  Text(
                    '400.00',
                    style: AppStyless.priceFont18,
                  ),
                  SizedBox(width: width * .25),
                  // SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      text: 'Add to cart',
                      backgroundColor: Colors.blue,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
