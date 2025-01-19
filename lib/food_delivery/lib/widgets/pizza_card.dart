// import 'package:flutter/material.dart';
//
// class PizzaCard extends StatelessWidget {
//   final String title;
//   final String price;
//   final String imageUrl;
//   final String? deliveryTime;
//
//   const PizzaCard({
//     Key? key,
//     required this.title,
//     required this.price,
//     required this.imageUrl,
//     this.deliveryTime,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 20), // Простор помеѓу картите
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 8,
//             offset: Offset(2, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.asset(
//               imageUrl, // Локална слика
//               width: 90,
//               height: 90,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 if (deliveryTime != null) ...[
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.timer,
//                         color: Color(0xFFB7B7B7),
//                         size: 16,
//                       ),
//                       const SizedBox(width: 4),
//                       Text(
//                         deliveryTime!,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFFB7B7B7),
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//                 const SizedBox(height: 8),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     color: Color(0xFF2FB300),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.add_circle,
//               color: Color(0xFF2FB300),
//               size: 32,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class HomeScreen2 extends StatelessWidget {
//   const HomeScreen2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(23, 10, 23, 31),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           'Hello!',
//                           style: TextStyle(
//                             color: Color(0xFF959595),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'Welcome !',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 32,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.notifications,
//                         color: Colors.black,
//                         size: 24,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 30),
//                 const PizzaCard(
//                   title: 'Пица\nКапричиоза',
//                   price: '500 ден',
//                   imageUrl: 'assets/images/kapri.png',
//                   deliveryTime: '14-20 minutes',
//                 ),
//                 const PizzaCard(
//                   title: 'Пица\nПеперони',
//                   price: '650 ден',
//                   imageUrl: 'assets/images/peperoni.png',
//                   deliveryTime: '18-25 minutes',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

import 'package:flutter/material.dart';

class PizzaCard extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String? deliveryTime;
  final Function(String title, String price, String imageUrl) onAddToFavorites;
  final Function(String title, String price, String imageUrl) onCardTap;

  const PizzaCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.deliveryTime,
    required this.onAddToFavorites,
    required this.onCardTap,
  }) : super(key: key);

  @override
  _PizzaCardState createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    final snackBar = SnackBar(
      content: Text(isFavorite
          ? '${widget.title} додадена во омилени!'
          : '${widget.title} отстранета од омилени!'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    // Додај само ако е омилена.
    if (isFavorite) {
      widget.onAddToFavorites(widget.title, widget.price, widget.imageUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              widget.imageUrl,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                if (widget.deliveryTime != null) ...[
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: Color(0xFFB7B7B7),
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        widget.deliveryTime!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFFB7B7B7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
                const SizedBox(height: 8),
                Text(
                  widget.price,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF2FB300),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: toggleFavorite,
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                  size: 28,
                ),
              ),
              IconButton(
                onPressed: () => widget.onCardTap(
                  widget.title,
                  widget.price,
                  widget.imageUrl,
                ),
                icon: const Icon(
                  Icons.add_circle,
                  color: Color(0xFF2FB300),
                  size: 32,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

