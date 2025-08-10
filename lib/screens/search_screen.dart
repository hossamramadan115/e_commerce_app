import 'package:e_commerce_app/screens/widget/custom_text_form_field.dart';
import 'package:e_commerce_app/screens/widget/our_product.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                CustomTextFormField(
                  hintText: 'search for product',
                  icon: Icons.search,
                ),
                const SizedBox(height: 10),
                Text(
                  'Search result',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                const OurProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
