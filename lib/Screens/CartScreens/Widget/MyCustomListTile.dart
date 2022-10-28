import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MyCustomListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff242424),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff242424),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffE0E0E0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color(0xff808080),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "01",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffE0E0E0),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Color(0xff808080),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff242424),
                    ),
                  ),
                  child: Icon(
                    Icons.close,
                    size: 10,
                    color: Color(0xff242424),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
