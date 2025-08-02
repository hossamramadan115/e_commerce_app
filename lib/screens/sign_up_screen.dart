import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Column(
          children: [
            Center(
              child: Text(
                'SnapCart',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
