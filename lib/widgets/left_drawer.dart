import 'package:flutter/material.dart';
import 'package:karesu_mobile/screens/menu.dart';
import 'package:karesu_mobile/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
    decoration: BoxDecoration(
      color: const Color(0xFFf05225),  // Orange to match menu
    ),
    child: const Column(
      children: [
        Text(
          'Karesu',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "Get the best deals on your vehicle with Karesu. Simple, fast, and secure transactions.",
          textAlign: TextAlign.center,
          style: TextStyle(
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
    title: const Text('Home'),
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
    leading: const Icon(Icons.directions_car),
    title: const Text('Add Product'),
    // Bagian redirection ke MoodEntryFormPage
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductEntryFormPage(),
          ));
    },
  ),        ],
      ),
    );
  }
}