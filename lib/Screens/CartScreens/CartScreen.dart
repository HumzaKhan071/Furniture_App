import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/CartScreens/Widget/MyCustomListTile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CheckOutScreens/CheckOutScreen.dart';
import 'Model/MyCartModel.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
          "My Cart",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: ListView.builder(
                itemCount: myCartModel.length,
                itemBuilder: (context, index) {
                  return MyCustomListTile(
                    title: myCartModel[index].title,
                    subtitle: myCartModel[index].subtitle,
                    image: myCartModel[index].image,
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      height: 44,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enter Coupon Code",
                            style: GoogleFonts.nunitoSans(
                              color: Color(0xff999999),
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              color: Color(0xff303030),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "\$ 95.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckOutScreen()));
                      },
                      child: Text(
                        "Checkout",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
