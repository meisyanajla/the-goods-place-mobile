import 'package:flutter/material.dart';
import 'package:the_goods_place/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.fields.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.fields.name,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rp${product.fields.price}",
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              product.fields.description,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text(
                  "Quantity Available:",
                  style: TextStyle(fontSize: 14.0),
                ),
                const SizedBox(width: 8),
                Text(
                  "${product.fields.quantity} pieces",
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "Rating:",
                  style: TextStyle(fontSize: 14.0),
                ),
                const SizedBox(width: 8),
                Row(
                  children: List.generate(
                    5,
                    (i) => Icon(
                      i < double.parse(product.fields.rating).floor()
                          ? Icons.star
                          : Icons.star_border,
                      color: const Color(0xFFFFDE4D),
                      size: 16.0,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "(${double.parse(product.fields.rating).toStringAsFixed(2)})",
                  style: const TextStyle(fontSize: 14.0),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
