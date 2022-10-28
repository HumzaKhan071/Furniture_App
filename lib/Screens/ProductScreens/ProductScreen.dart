import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const ProductScreen(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 455,
          width: 449,
          child: Stack(children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 455,
                width: 323,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.1,
              left: 30,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
              ),
            ),
            Positioned(
              bottom: size.height * 0.1,
              left: 20,
              child: Container(
                  padding: EdgeInsets.all(10),
                  height: 192,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff909090),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffffffff),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffF0F0F0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffB4916C),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffF0F0F0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffE4CBAD),
                        ),
                      )
                    ],
                  )),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: GoogleFonts.gelasio(
                  color: Color(0xff303030),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff303030),
                        fontSize: 30,
                        fontWeight: FontWeight.w700)),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("1",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xff303030),
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffF2C94C),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("4.9",
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff303030),
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 20,
                ),
                Text("(50 Reviews)",
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff808080),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Text(
                "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
                style: GoogleFonts.nunitoSans(
                    color: Color(0xff808080),
                    fontSize: 14,
                    fontWeight: FontWeight.w300)),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffF0F0F0),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 277,
                  decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(6)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add to Cart",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xffffffff),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )),
                )
              ],
            )
          ]),
        ),
      ]),
    ));
  }
}
