import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/widget/custom_text_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_form_login_section.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  'SnapCart',
                  style: TextStyle(
                    color: kSplashColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 100),
                CustomTextFormLoginSection(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Creat new account...',
                      style: TextStyle(
                        color: kSplashColor,
                        fontSize: 16,
                      ),
                    ),
                    CustomTextButton(
                      onPressed: () {},
                      text: 'Sign Up',
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
