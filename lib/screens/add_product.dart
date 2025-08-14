import 'dart:io';

import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/widget/custom_button.dart';
import 'package:e_commerce_app/screens/widget/custom_text_form_field.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? pickedImage;
  void uploadImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    var selected = File(image!.path);

    if (selected != null) {
      setState(() {
        pickedImage = selected;
      });
    }
  }

  final formKey = GlobalKey<FormState>();
  String category = 'iphone';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  'SnapCart',
                  style: AppStyless.styleBold24,
                ),
                SizedBox(height: 100),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        label: Text('Title'),
                        validator: (data) {
                          if (data == null || data.isEmpty) {
                            return 'field is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      CustomTextFormField(
                        label: Text('Description'),
                        validator: (data) {
                          if (data == null || data.isEmpty || data.length < 7) {
                            return 'field is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      CustomTextFormField(
                        label: Text('Price'),
                        validator: (data) {
                          if (data == null || data.isEmpty) {
                            return 'field is required';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: const Text('Select a category'),
                          onChanged: (value) {
                            setState(() {
                              category = value!;
                            });
                          },
                          items: const [
                            DropdownMenuItem(
                              value: 'iphone',
                              child: Text('iPhone'),
                            ),
                            DropdownMenuItem(
                              value: 'laptop',
                              child: Text('Laptop'),
                            ),
                            DropdownMenuItem(
                              value: 'watch',
                              child: Text('Watch'),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          uploadImage();
                        },
                        child: pickedImage == null
                            ? Text(
                                'chose image',
                                style: AppStyless.priceFont18,
                              )
                            : Image.file(pickedImage!),
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        text: 'Upload',
                        backgroundColor: Colors.blue,
                        onTap: () {
                          formKey.currentState!.save();
                          if (formKey.currentState!.validate()) {}
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
