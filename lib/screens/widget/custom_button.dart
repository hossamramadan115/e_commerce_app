import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, required this.text, this.backgroundColor});

  final VoidCallback? onTap;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 3, // تأثير الظل عند الرفع
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: width * .05, color: kPrimaryColor),
        ),
      ),
    );
  }
}
