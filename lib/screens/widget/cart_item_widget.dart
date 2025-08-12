import 'package:e_commerce_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final paddingHorizontal = screenWidth * 0.02;
    final paddingVertical = screenWidth * 0.04;
    final imageSize = screenWidth * 0.25;
    final imageTopOffset = -imageSize * 0.5;
    final textFontSize = screenWidth * 0.042;
    final priceFontSize = screenWidth * 0.039;

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: AspectRatio(
        aspectRatio: 6 / 1.5,
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
                        style: AppStyless.price.copyWith(
                          fontSize: priceFontSize,
                        ),
                      ),
                      Spacer(flex: 7),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blue,
                          size: screenWidth * 0.06,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        '0',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(flex: 1),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.red,
                          size: screenWidth * 0.06,
                        ),
                      ),
                    ],
                  )
                ],
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

//  import 'package:flutter/material.dart';

// class CartItemWidget extends StatelessWidget {
//   final String imageUrl;
//   final String productName;
//   final double price;
//   final int quantity;
//   final VoidCallback onIncrease;
//   final VoidCallback onDecrease;

//   const CartItemWidget({
//     super.key,
//     required this.imageUrl,
//     required this.productName,
//     required this.price,
//     required this.quantity,
//     required this.onIncrease,
//     required this.onDecrease, required double productPrice, required double Price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade300,
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // صورة المنتج
//           ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.network(
//               imageUrl,
//               height: 70,
//               width: 70,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 12),

//           // تفاصيل المنتج
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   productName,
//                   style: const TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   r'$1529',
//                   // "\$${price.toStringAsFixed(2)}",
//                   style: const TextStyle(
//                       fontSize: 14, color: Colors.green, fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ),

//           // أزرار الكمية
//           Row(
//             children: [
//               IconButton(
//                 onPressed: onDecrease,
//                 icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
//               ),
//               Text(
//                 quantity.toString(),
//                 style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               IconButton(
//                 onPressed: onIncrease,
//                 icon: const Icon(Icons.add_circle_outline, color: Colors.blue),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   // }
// }
