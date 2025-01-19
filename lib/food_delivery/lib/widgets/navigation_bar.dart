// import 'package:flutter/material.dart';
// import '../widgets/search_bar.dart';
// import '../widgets/pizza_card.dart';
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
//                 const SearchBar(),
//                 const SizedBox(height: 20),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 7,
//                     ),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF434343),
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Color.fromRGBO(0, 0, 0, 0.175),
//                           blurRadius: 20,
//                           offset: Offset(2, 2),
//                         ),
//                       ],
//                     ),
//                     child: const Text(
//                       'Pizza',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700,
//                         fontFamily: 'Roboto',
//                         letterSpacing: 0.63,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 PizzaCard(
//                   title: 'Пица\nКапричиоза',
//                   price: '500 ден',
//                   imageUrl: 'assets/images/kapri.png', // Replace with local image
//                   deliveryTime: '14-20 minutes', onAddToFavorites: (String title, String price, String imageUrl) {  }, onCardTap: (String title, String price, String imageUrl) {  },
//
//                 ),
//                 const SizedBox(height: 20),
//                 PizzaCard(
//                   title: 'Пица\nПеперони',
//                   price: '650 ден',
//                   imageUrl: 'assets/images/peperoni.png', // Replace with local image
//                   deliveryTime: '18-25 minutes', onAddToFavorites: (String title, String price, String imageUrl) {  }, onCardTap: (String title, String price, String imageUrl) {  },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.event),
//             label: 'Event',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/pizza_card.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(23, 10, 23, 31),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello!',
                          style: TextStyle(
                            color: Color(0xFF959595),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const SearchBar(),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF434343),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.175),
                          blurRadius: 20,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: const Text(
                      'Pizza',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.63,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                PizzaCard(
                  title: 'Пица\nКапричиоза',
                  price: '500 ден',
                  imageUrl: 'assets/images/kapri.png',
                  deliveryTime: '14-20 minutes',
                  onAddToFavorites: (String title, String price, String imageUrl) {},
                  onCardTap: (String title, String price, String imageUrl) {},
                ),
                const SizedBox(height: 20),
                PizzaCard(
                  title: 'Пица\nПеперони',
                  price: '650 ден',
                  imageUrl: 'assets/images/peperoni.png',
                  deliveryTime: '18-25 minutes',
                  onAddToFavorites: (String title, String price, String imageUrl) {},
                  onCardTap: (String title, String price, String imageUrl) {},
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: 0, // "Home" ќе биде селектиран по подразбирање
        onTap: (index) {
          // Дефинирање на акциите за секоја икона
          switch (index) {
            case 0: // Home
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              break;
            case 1: // Favorite
              Navigator.pushNamed(context, '/favorites');
              break;
            case 2: // Cart
              Navigator.pushNamed(context, '/cart');
              break;
            case 3: // Event
              Navigator.pushNamed(context, '/events');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
        ],
      ),
    );
  }
}
