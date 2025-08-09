import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextFormLoginSection extends StatelessWidget {
  CustomTextFormLoginSection({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextFormField(
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
            },
          ),
        ],
      ),
    );
  }
}
