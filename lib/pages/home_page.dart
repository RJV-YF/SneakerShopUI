import 'package:flutter/material.dart';
import 'package:sneakershop/components/my_drawer.dart';
import 'package:sneakershop/components/my_navbar.dart';
import 'package:sneakershop/pages/cart_page.dart';
import 'package:sneakershop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onTabChange(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MyShop(),
    const MyCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: const MyDrawer(),
      body: _pages[selectedIndex],
      bottomNavigationBar: MyNavbar(
        index: selectedIndex,
        onTabChange: onTabChange,
      ),
    );
  }
}
