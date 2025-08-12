import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Row(
            children: [
              Text('400.00'),
              SizedBox(width: 10),
              SizedBox(
                width: 120,
                child: CustomButton(text: 'text'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
