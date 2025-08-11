import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                  CustomTextFormField(
                    label: Text('Email'),
                    validator: (data) {
                      if (data == null || data.isEmpty) {
                        return 'field is required';
                      } else if (!data.contains('@') || data.length < 7) {
                        return 'please enter a vaild email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 70),
                  CustomButton(
                    text: 'Reset password',
                     backgroundColor: kSplashColor,
                    onTap: () {
                      formKey.currentState!.save();
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
