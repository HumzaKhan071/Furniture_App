import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ProductScreens/ProductScreen.dart';

class MyItemContainer extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const MyItemContainer({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ProductScreen(
                      title: title,
                      price: price,
                      image: image,
                    )));
      },
      child: Container(
        height: 253,
        width: 177,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 157,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              bottom: 52,
              right: 20,
              child: Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  color: Color(0xff606060),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 4,
              child: Text(
                title,
                style: GoogleFonts.nunitoSans(
                  fontSize: 14,
                  color: Color(0xff606060),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 4,
              child: Text(
                price,
                style: GoogleFonts.nunitoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff303030),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
