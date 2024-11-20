import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:the_goods_place/models/product_entry.dart';
import 'package:the_goods_place/screens/product_detail.dart';
import 'package:the_goods_place/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPage();
}


class _ProductPage extends State<ProductPage> {
  Future<List<Product>> fetchMood(CookieRequest request) async {
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object MoodEntry
    List<Product> listMood = [];
    for (var d in data) {
      if (d != null) {
        listMood.add(Product.fromJson(d));
      }
    }
    return listMood;
    }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Unable to find any products in The Goods Place.',
                    style: TextStyle(fontSize: 20, color: Color(0xFF7EACB5)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  var product =
                      snapshot.data![index]; // Mendapatkan objek Product
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: product),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${snapshot.data![index].fields.name}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp${snapshot.data![index].fields.price}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "${snapshot.data![index].fields.description}",
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF303030),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              const Text(
                                "Quantity Available",
                                style: TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "${snapshot.data![index].fields.quantity} pieces",
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                "Rating",
                                style: TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(width: 8),
                              Row(
                                children: List.generate(
                                  5,
                                  (i) => Icon(
                                    i < double.parse(snapshot.data![index].fields.rating).floor()
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: const Color(0xFFFFDE4D),
                                    size: 18.0,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "(${double.parse(snapshot.data![index].fields.rating).toStringAsFixed(2)})",
                                style: const TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}