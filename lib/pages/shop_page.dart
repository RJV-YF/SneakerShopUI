import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle:
                    GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              ),
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12),
            child: Text(
              'Everyone flies but some flies longer than others',
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
