import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.label,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.icon, this.controller,
  });

  final String? hintText;
  final Widget? label;
  final bool obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final IconData? icon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      obscureText: obscureText,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: icon != null ? Icon(icon) : null,
        label: label,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border(Colors.grey),
        focusedBorder: border(Colors.blue),
        errorBorder: border(Colors.red),
        focusedErrorBorder: border(Colors.redAccent),
        border: border(Colors.black),
      ),
    );
  }

  OutlineInputBorder border(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
    );
  }
}

// validator: (data) {
//         if (data == null || data.isEmpty) {
//           return 'field is required';
//         }
//         return null;
//       },
