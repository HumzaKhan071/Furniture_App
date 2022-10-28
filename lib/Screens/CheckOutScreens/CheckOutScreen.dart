import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Color(0xff242424)),
        centerTitle: true,
        title: Text(
          "Check Out",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping Address",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff909090),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Color(0xff242424),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bruno Fernandes",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    color: Color(0xff242424),
                  ),
                  Text(
                    "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff909090),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Color(0xff909090),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset("assets/card.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "**** **** **** 1234",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery method",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff909090),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Color(0xff909090),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset("assets/dhl.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fast (2-3days)",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 115,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order: ",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$ 95.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery: ",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$ 5.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total: ",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$ 100.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff242424),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "SUBMIT ORDER",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
