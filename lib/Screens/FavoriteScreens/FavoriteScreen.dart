import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.search, color: Color(0xff242424)),
        actions: [
          Icon(Icons.shopping_cart_outlined, color: Color(0xff242424)),
          SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
        title: Text(
          "Favorites",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/Table.png")),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Coffee Table",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\$ 50.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xff242424),
                      )),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
