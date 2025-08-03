import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextFormSignUpSection extends StatelessWidget {
  CustomTextFormSignUpSection({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: Text('Name'),
            validator: (data) {
              if (data == null || data.isEmpty) {
                return 'field is required';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
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
          SizedBox(height: 16),
          CustomTextFormField(
            label: Text('Password'),
            validator: (data) {
              if (data == null || data.isEmpty) {
                return 'field is required';
              } else if (data.length < 7) {
                return 'must be at least 7 characters';
              }
              return null;
            },
            obscureText: true,
          ),
          SizedBox(height: 16),
          CustomButton(
            text: 'Sign Up',
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
