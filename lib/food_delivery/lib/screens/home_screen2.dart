// import 'package:flutter/material.dart';
// import 'package:newfigmapizza/components/home_screen/home_screen.dart';
// import '../widgets/pizza_card.dart';
//
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreen2State createState() => _HomeScreen2State();
// }
//
// class _HomeScreen2State extends State<HomeScreen2> {
//   final List<String> favoritePizzas = [];
//   final List<String> cartPizzas = [];
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
//                           'Welcome!',
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
//                 const TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search...',
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 PizzaCard(
//                   title: 'Пица\nКапричиоза',
//                   price: '500 ден',
//                   imageUrl: 'assets/images/kapri.png',
//                   deliveryTime: '14-20 minutes',
//                   onAddToCart: () {
//                     setState(() {
//                       cartPizzas.add('Пица Капричиоза');
//                     });
//                   },
//                   onToggleFavorite: () {
//                     setState(() {
//                       if (favoritePizzas.contains('Пица Капричиоза')) {
//                         favoritePizzas.remove('Пица Капричиоза');
//                       } else {
//                         favoritePizzas.add('Пица Капричиоза');
//                       }
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 PizzaCard(
//                   title: 'Пица\nПеперони',
//                   price: '650 ден',
//                   imageUrl: 'assets/images/peperoni.png',
//                   deliveryTime: '18-25 minutes',
//                   onAddToCart: () {
//                     setState(() {
//                       cartPizzas.add('Пица Пеперони');
//                     });
//                   },
//                   onToggleFavorite: () {
//                     setState(() {
//                       if (favoritePizzas.contains('Пица Пеперони')) {
//                         favoritePizzas.remove('Пица Пеперони');
//                       } else {
//                         favoritePizzas.add('Пица Пеперони');
//                       }
//                     });
//                   },
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
//         onTap: (index) {
//           if (index == 0) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const HomeScreen()),
//             );
//           }
//           // Other indices can handle cart, events, etc.
//         },
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
import '../../../pizza_detail/pizza_detail_screen.dart';
import '../widgets/FavoritesScreen.dart';
import '../widgets/search_bar.dart';
import '../widgets/pizza_card.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int _selectedIndex = 0;
  final List<Map<String, String>> _favorites = [];

  void _onBottomNavigationBarTapped(int index) {
    if (index == 0) {
      Navigator.popUntil(context, (route) => route.isFirst);
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FavoritesScreen(favorites: _favorites),
        ),
      );
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addToFavorites(String title, String price, String imageUrl) {
    setState(() {
      _favorites.add({'title': title, 'price': price, 'imageUrl': imageUrl});
    });

    final snackBar = SnackBar(
      content: Text('$title додадена во омилени!'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _goToPizzaDetail(String title, String price, String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PizzaDetailScreen(
          title: title,
          price: price,
          imageUrl: imageUrl,
        ),
      ),
    );
  }

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
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        print('Notifications pressed');
                      },
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const SearchBarWidget(), // Користиме SearchBarWidget
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
                  onAddToFavorites: _addToFavorites,
                  onCardTap: _goToPizzaDetail,
                ),
                const SizedBox(height: 20),
                PizzaCard(
                  title: 'Пица\nПеперони',
                  price: '650 ден',
                  imageUrl: 'assets/images/peperoni.png',
                  deliveryTime: '18-25 minutes',
                  onAddToFavorites: _addToFavorites,
                  onCardTap: _goToPizzaDetail,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onBottomNavigationBarTapped,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.favorite),
                if (_favorites.isNotEmpty)
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        '${_favorites.length}',
                        style: const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
            label: 'Favorite',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
        ],
      ),
    );
  }
}

