import 'package:flutter/material.dart';

import 'package:furniture_app/Screens/ProfileScreens/Model/MyProfileScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        leading: Icon(
          Icons.search,
          color: Color(0xff242424),
        ),
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Icon(
            Icons.exit_to_app,
            color: Color(0xff242424),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/Profile.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bruno Pham",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("bruno203@gmail.com",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 14,
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                  myProfileScreenModel.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyContainer(
                            title: myProfileScreenModel[index].title,
                            subtitle: myProfileScreenModel[index].subtitle,
                            onTap: myProfileScreenModel[index].onTap),
                      )),
            )
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Navigator onTap;
  const MyContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));
      },
      child: Container(
        height: 80,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      subtitle,
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff808080),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff242424),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
