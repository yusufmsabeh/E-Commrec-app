import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/SplashScreenBackgroundImage.png'),
                  fit: BoxFit.cover)),
        ),
        Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: Container(
                  width: 232.w,
                  height: 241.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/SplachScreenLogo.png')))),
            ),
            SizedBox(
              height: 321.h,
            ),
            Container(
              width: 299.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 0, 173, 239),
                        Color.fromARGB(255, 46, 49, 146)
                      ])),
              child: TextButton(
                onPressed: null,
                child: Text(
                  "LOG IN",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 299.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: TextButton(
                onPressed: null,
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
