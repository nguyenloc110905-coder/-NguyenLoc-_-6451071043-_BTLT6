import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detail_screen.dart';
import '../widget/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(name: 'iPhone 15', price: 999.0, description: 'The latest iPhone with Titanium design.'),
      Product(name: 'MacBook Air M3', price: 1099.0, description: 'Supercharged by M3 chip, thin and light.'),
      Product(name: 'iPad Pro', price: 799.0, description: 'The ultimate iPad experience with M2.'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text('Product List'),
            const Text('MSSV: 6451071043', style: TextStyle(fontSize: 12)),
          ],
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(product: products[index])),
              );
            },
          );
        },
      ),
    );
  }
}
