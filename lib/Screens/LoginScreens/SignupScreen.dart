import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/LoginScreens/SignInScreen.dart';

import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            Text("WELCOME",
                style: GoogleFonts.merriweather(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff303030))),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 345,
              height: 550,
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
                        hintText: "Name",
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
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "Confirm Password",
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
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff242424),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("SIGN UP",
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xffFFFFFF))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff909090))),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SigninScreen()));
                        },
                        child: Text(" Sign In",
                            style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff242424))),
                      ),
                    ],
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
