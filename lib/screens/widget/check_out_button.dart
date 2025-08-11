import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key, this.onTap, required this.text, required this.backgroundColor});

   final VoidCallback? onTap;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        style: TextStyle(
          fontSize: 20,
          color: kPrimaryColor,
          fontFamily: 'Playfair Display',
        ),
      ),
    );
  }
}
