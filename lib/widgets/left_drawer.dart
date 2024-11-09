import 'package:flutter/material.dart';
import 'package:the_goods_place/screens/menu.dart';
import 'package:the_goods_place/screens/createproduct_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'The Goods Place',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "where your wonderland of hugs awaits ⸜(｡˃ ᵕ ˂ )⸝♡",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home Page'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text('Create Product'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductFormPage(),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}