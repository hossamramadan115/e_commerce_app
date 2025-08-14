import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/helper/show_snack_bar.dart';
import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_form_field.dart';
import 'package:e_commerce_app/utils/app_router.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  void login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      // GoRouter.of(context).push(AppRouter.kBottombar);
    } on FirebaseException catch (e) {
      showSnackBar(context, e.toString());
      // print(e.toString());
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();

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
                Text('SnapCart', style: AppStyless.styleBold24),
                SizedBox(height: 100),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      CustomTextFormField(
                        controller: email,
                        label: Text('Email'),
                        validator: (data) {
                          if (data == null || data.isEmpty) {
                            return 'field is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      CustomTextFormField(
                        controller: password,
                        label: Text('Password'),
                        validator: (data) {
                          if (data == null || data.isEmpty) {
                            return 'field is required';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        text: 'Login',
                        onTap: () {
                          formKey.currentState!.save();
                          if (formKey.currentState!.validate()) {}
                          login();
                        },
                        backgroundColor: kSplashColor,
                      ),
                    ],
                  ),
                ),
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
                      text: 'Sign Up',
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kSignUpScreen);
                      },
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
