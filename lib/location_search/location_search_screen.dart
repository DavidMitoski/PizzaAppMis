import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Пакет за географски координати
import 'search_bar.dart'; // Ваша компонента за пребарување
import 'order_confirmation_screen.dart'; // Новата класа за пораката

class LocationSearchScreen extends StatefulWidget {
  const LocationSearchScreen({Key? key}) : super(key: key);

  @override
  State<LocationSearchScreen> createState() => _LocationSearchScreenState();
}

class _LocationSearchScreenState extends State<LocationSearchScreen> {
  LatLng? _selectedLocation; // Локацијата која корисникот ја избрал
  final LatLng _initialLocation = LatLng(41.9981, 21.4254); // Центар на Скопје

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Пребарувач и копче за потврда
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                children: [
                  // Компонента за пребарување
                  Expanded(
                    child: SearchBar2(),
                  ),
                  const SizedBox(width: 8),
                  // Копче за потврда
                  ElevatedButton(
                    onPressed: _selectedLocation != null
                        ? () {
                      // Одведи го корисникот на екранот за потврда
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderConfirmationScreen(),
                        ),
                      );
                    }
                        : null, // Онеспособи копче ако нема избрана локација
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3C5A99),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                    ),
                    child: const Text(
                      'Confirm location',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // Мапа
            Expanded(
              child: FlutterMap(
                options: MapOptions(
                  center: _initialLocation, // Почетен центар на мапата
                  zoom: 13.0, // Почетно зумирање
                  onTap: (tapPosition, LatLng latlng) {
                    setState(() {
                      _selectedLocation = latlng; // Складирање на локацијата
                    });
                  },
                ),
                children: [
                  // OpenTopoMap Tile Layer
                  TileLayer(
                    urlTemplate: "https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                  ),
                  // Маркер за избраната локација
                  if (_selectedLocation != null)
                    MarkerLayer(
                      markers: [
                        Marker(
                          width: 40,
                          height: 40,
                          point: _selectedLocation!,
                          builder: (ctx) => const Icon(
                            Icons.location_pin,
                            size: 40,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
