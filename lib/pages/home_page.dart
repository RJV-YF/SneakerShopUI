import 'package:flutter/material.dart';
import 'package:sneakershop/components/my_navbar.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Text('Current Index $selectedIndex'),
      ),
      bottomNavigationBar: MyNavbar(
        index: selectedIndex,
        onTabChange: onTabChange,
      ),
    );
  }
}
