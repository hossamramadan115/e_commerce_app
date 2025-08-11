import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/widget/cart_item_widget.dart';
import 'package:e_commerce_app/screens/widget/check_out_button.dart';
import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            'My Cart',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CartItemWidget();
                },
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Check Out',
                backgroundColor: kSplashColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
