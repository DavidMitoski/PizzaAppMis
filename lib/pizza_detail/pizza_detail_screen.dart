// import 'package:flutter/material.dart';
// import 'size_selector.dart';
// import 'quantity_selector.dart';
// import 'price_section.dart';
//
// class PizzaDetailScreen extends StatelessWidget {
//   const PizzaDetailScreen({Key? key, required String title, required String price, required String imageUrl}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Горна лента со назад и омилени копчиња
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.arrow_back, size: 28),
//                       onPressed: () => Navigator.pop(context),
//                     ),
//                     Text(
//                       'Detail',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.favorite_border, size: 28),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//
//               // Наслов
//               Text(
//                 'Пица Капричиоза',
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 20),
//
//               // Слика на пицата
//               Image.asset(
//                 'assets/images/kapri.png',
//                 width: 250,
//                 height: 250,
//                 fit: BoxFit.contain,
//               ),
//               const SizedBox(height: 20),
//
//               // Текст за избор на големина
//               Text(
//                 'Choese the size',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 20),
//
//               // Селекција на големина
//               const SizeSelector(),
//               const SizedBox(height: 30),
//
//               // Селекција на количина
//               const QuantitySelector(),
//               const SizedBox(height: 30),
//
//               // Цена и копче за додавање во кошничка
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Price\n500 ден',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.green,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 30,
//                           vertical: 15,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text(
//                         'Add to Cart',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../payment/payment_screen.dart';

class PizzaDetailScreen extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;

  const PizzaDetailScreen({
    Key? key,
    required this.title,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<PizzaDetailScreen> createState() => _PizzaDetailScreenState();
}

class _PizzaDetailScreenState extends State<PizzaDetailScreen> {
  String selectedSize = '8 inch';
  int quantity = 1;
  late int basePrice;

  @override
  void initState() {
    super.initState();
    basePrice = int.parse(widget.price.split(' ')[0]); // Extract base price from "500 ден"
  }

  void updateSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 1) quantity--;
    });
  }

  int calculatePrice() {
    int sizeMultiplier = selectedSize == '8 inch'
        ? 1
        : selectedSize == '20 inch'
        ? 2
        : 3;
    return basePrice * sizeMultiplier * quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, size: 28),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Detail',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_border, size: 28),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Title
              Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),

              // Pizza image
              Center(
                child: Image.asset(
                  widget.imageUrl,
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),

              // Choose size (centered)
              const Center(
                child: Text(
                  'Choose the size',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Size selector
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var size in ['8 inch', '20 inch', '32 inch'])
                    GestureDetector(
                      onTap: () => updateSize(size),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: selectedSize == size ? Colors.black : Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          size,
                          style: TextStyle(
                            color: selectedSize == size ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 30),

              // Quantity selector with border
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2), // Grey border
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: decrementQuantity,
                      icon: const Icon(Icons.remove, size: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      quantity.toString().padLeft(2, '0'),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2), // Grey border
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: incrementQuantity,
                      icon: const Icon(Icons.add, size: 28),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Price and Add to Cart button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price\n${calculatePrice()} ден',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

