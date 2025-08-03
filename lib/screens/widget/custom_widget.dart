// import 'package:flutter/material.dart';
// import 'package:store_app/models/product_model.dart';
// import 'package:store_app/pages/update_product_page.dart';

// class CustomCard extends StatelessWidget {
//   CustomCard({required this.product, super.key});

//   ProductModel product;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
//       },
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//             decoration: BoxDecoration(boxShadow: [
//               BoxShadow(
//                 blurRadius: 40,
//                 color: Colors.grey.withOpacity(.2),
//                 spreadRadius: 0,
//                 offset: Offset(10, 10),
//               ),
//             ]),
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(3),
//               ),
//               elevation: 3,
//               color: Colors.white,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       product.title.substring(0, 10),
//                       style: TextStyle(color: Colors.grey, fontSize: 15),
//                     ),
//                     SizedBox(
//                       height: 3,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           r'$' '${product.price.toString()}',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Icon(
//                           Icons.favorite,
//                           color: Colors.redAccent,
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 65,
//             top: -50,
//             child: Image.network(
//               product.image,
//               // 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
//               height: 100,
//               width: 100,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
