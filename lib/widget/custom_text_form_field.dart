import 'package:flutter/material.dart';

class CustomTexFormtField extends StatelessWidget {
  CustomTexFormtField(
      {this.label, this.onChanged, this.hintText, this.scureText = false});

  String? hintText;
  Widget? label;
  bool? scureText;

  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      obscureText: scureText!,
      onChanged: onChanged,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
