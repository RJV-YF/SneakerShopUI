import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavbar extends StatelessWidget {
  const MyNavbar({super.key, this.onTabChange, required this.index});

  final int index;
  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: GNav(
        selectedIndex: index,
        onTabChange: onTabChange,
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            gap: 8,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            gap: 8,
          ),
        ],
      ),
    );
  }
}
