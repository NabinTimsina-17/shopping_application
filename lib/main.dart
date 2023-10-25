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
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        primary: false,
        children: const [
          ProductItem(name: 'coat for kid'),
          ProductItem(name: 'coat'),
          ProductItem(name: 'Daura surwal'),
          ProductItem(name: 'Shirt'),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;

  const ProductItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        
          Container(
            height: 100,
            width: 100,
            color: Colors.grey, 
          ),
          
          Text(
            name,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print('Buy Now: $name');
            },
            child: const Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}