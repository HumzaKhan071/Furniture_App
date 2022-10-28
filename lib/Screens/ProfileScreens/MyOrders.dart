import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                unselectedLabelColor: Color(0xff999999),
                labelStyle: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      "Delivered",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Processing",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Canceled",
                    ),
                  ),
                ]),
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
              "My order",
              style: GoogleFonts.merriweather(
                color: Color(0xff242424),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 172,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order ID: 123456789",
                          style: GoogleFonts.nunitoSans(
                            color: Color(0xff242424),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "20/03/2020",
                          style: GoogleFonts.nunitoSans(
                            color: Color(0xff909090),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Quantity:",
                              style: GoogleFonts.nunitoSans(
                                color: Color(0xff242424),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: " 2",
                                  style: GoogleFonts.nunitoSans(
                                    color: Color(0xff242424),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                        Text.rich(
                          TextSpan(
                              text: "Total Amount: ",
                              style: GoogleFonts.nunitoSans(
                                color: Color(0xff242424),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: "\$ 20.00",
                                  style: GoogleFonts.nunitoSans(
                                    color: Color(0xff242424),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff242424)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Detail",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        Text(
                          "Delivered",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
