import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // brand logo
          Image.asset(
            'assets/images/nike-logo.jpg',
          ),

          //title
          Text(
            'Just Do It',
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),

          //sub title
          Text(
            'Brand new sneakers and custom kicks made with premium quality',
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 16,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 80,
          ),

          //button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Shop Now',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )

          //
        ],
      )),
    );
  }
}
