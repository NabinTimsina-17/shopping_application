import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopping App',
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        primary: false,
        children: const [
          ProductItem(name: 'Coat for Kid', imagePath: 'assets/images/coat_for_kid.jpg'),
          ProductItem(name: 'Coat', imagePath: 'assets/images/coat.jpg'),
          ProductItem(name: 'Daura Surwal', imagePath: 'assets/images/daura_surwal.jpg'),
          ProductItem(name: 'Shirt', imagePath: 'assets/images/Shirt.jpg'),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const ProductItem({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          
          Text(
            name,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),

          ElevatedButton(
            onPressed: () {
              print('Buy Now: $name');
            },
            child: const Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}
