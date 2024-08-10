import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = "homepage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "すき家 Sukiya",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("assets/images/sushi (1).png"),
            ),
            Text(
              "Taste of Japan Food",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 44,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Immerse Yourself in the Rich, Authentic Flavors of Japanese Sushi. Experience the Perfect Blend of Tradition and Taste",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.grey[300],
                fontSize: 23,
                height: 2,
              ),
              overflow: TextOverflow.clip,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(child: CustomBtn(
              onPressed: () {
                Navigator.pushNamed(context, 'menu');
              },
            )),
          ],
        ),
      ),
    );
  }
}
