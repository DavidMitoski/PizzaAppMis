import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, String>> favorites;

  const FavoritesScreen({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: favorites.isEmpty
          ? const Center(child: Text('No favorites added yet!'))
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return ListTile(
            leading: item['imageUrl'] != null && item['imageUrl']!.isNotEmpty
                ? Image.asset(
              item['imageUrl']!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            )
                : const Icon(Icons.image_not_supported),
            title: Text(item['title']!),
            subtitle: Text(item['price']!),
          );
        },
      ),
    );
  }
}
