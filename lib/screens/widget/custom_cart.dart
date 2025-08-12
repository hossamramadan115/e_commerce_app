import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final paddingHorizontal = screenWidth * 0.02;
    final paddingVertical = screenWidth * 0.04;
    final imageSize = screenWidth * 0.25;
    final imageTopOffset = -imageSize * 0.5;
    final textFontSize = screenWidth * 0.042;
    final priceFontSize = screenWidth * 0.039;

    return AspectRatio(
      aspectRatio: 1,
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: paddingHorizontal,
                  vertical: paddingVertical,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'iphone',
                      style: AppStyless.productName.copyWith(
                        fontSize: textFontSize,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.0009),
                    Row(
                      children: [
                        Text(
                          r'$1529',
                          style: AppStyless.price
                              .copyWith(fontSize: priceFontSize),
                        ),
                        Spacer(flex: 3),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            color: kSplashColor,
                            Icons.add,
                            size: screenWidth * 0.06,
                          ),
                        ),
                        Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: screenWidth * 0.07,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.18,
              top: imageTopOffset,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1024px-Apple_logo_black.svg.png',
                height: imageSize,
                width: imageSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
