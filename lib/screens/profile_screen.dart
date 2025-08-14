import 'package:e_commerce_app/screens/add_product.dart';
import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/screens/widget/custom_list_tile.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:e_commerce_app/utils/assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: screenWidth * 0.18,
                backgroundImage: AssetImage(Assets.profileImage),
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                'Hello Hossam',
                style: AppStyless.textFont20.copyWith(
                  fontSize: screenWidth * 0.06,
                ),
              ),
              Text(
                'hossam@gmail.com',
                style: AppStyless.textFont20.copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              CustomListTile(
                icon: Icons.request_page,
                title: 'Orders',
                onTap: () {},
              ),
              CustomListTile(
                icon: Icons.favorite,
                title: 'Favorites',
                onTap: () {},
              ),
              CustomListTile(
                icon: Icons.add,
                title: 'Add product',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddProduct(), // اسم الصفحة التانية
                    ),
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.03),
              SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Sign Out',
                    backgroundColor: Colors.red,
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      // context.go(AppRouter.kLoginScreen);
                      // GoRouter.of(context).go(AppRouter.kLoginScreen);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
