import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/HomeScreens/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Model/MyContainerModel.dart';
import 'Model/MyItemContainerModel.dart';
import 'Widget/MyContainer.dart';
import 'Widget/MyItemContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text(
              "Make Home",
              style: GoogleFonts.gelasio(
                color: Color(0xff909090),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Beautiful".toUpperCase(),
              style: GoogleFonts.gelasio(
                color: Color(0xff242424),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        leading: Icon(Icons.search_rounded, color: Color(0xff808080)),
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xff808080),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      myContainerModel.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MyContainer(
                              color: myContainerModel[index].color,
                              iconData: myContainerModel[index].iconData,
                              iconColor: myContainerModel[index].iconColor,
                            ),
                          )),
                )),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              childAspectRatio: 0.72,
              physics: BouncingScrollPhysics(),
              children: List.generate(
                  myItemContainerModel.length,
                  (index) => MyItemContainer(
                        image: myItemContainerModel[index].image,
                        price: myItemContainerModel[index].price,
                        title: myItemContainerModel[index].title,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
