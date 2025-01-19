import 'package:flutter/material.dart';
import 'package:newfigmapizza/components/home_screen/home_screen.dart';
import 'package:newfigmapizza/food_delivery/lib/screens/home_screen2.dart';
import 'package:newfigmapizza/payment/payment_screen.dart';
import 'package:newfigmapizza/pizza_detail/pizza_detail_screen.dart';

import 'location_search/location_search_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Исклучи го debug банерот
      title: 'Image Gallery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const HomeScreen(), // Директно постави го ImageGalleryWidget како почетен екран
    );
  }
}
