import 'package:e_commerce_app/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
              child: Text(
                'SnapCart',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustomTexFormtField(
              label: Text('Name'),
            ),
          ],
        ),
      ),
    );
  }
}
