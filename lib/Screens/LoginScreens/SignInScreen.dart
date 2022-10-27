import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/HomeScreens/HomePage.dart';
import 'package:furniture_app/Screens/LoginScreens/SignupScreen.dart';

import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 105,
                  height: 1,
                  color: Color(0xffBDBDBD),
                ),
                Image.asset("assets/AppLogo.png"),
                Container(
                  width: 105,
                  height: 1,
                  color: Color(0xffBDBDBD),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Hello !",
                style: GoogleFonts.merriweather(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff909090))),
            SizedBox(
              height: 20,
            ),
            Text("WELCOME BACK",
                style: GoogleFonts.merriweather(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff303030))),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 345,
              height: 437,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: GoogleFonts.merriweather(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff909090)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "Password",
                        hintStyle: GoogleFonts.merriweather(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff909090)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forgot Password ?",
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff909090))),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff242424),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("LOGIN",
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xffFFFFFF))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignupScreen()));
                    },
                    child: Text("Sign Up",
                        style: GoogleFonts.merriweather(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff909090))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
