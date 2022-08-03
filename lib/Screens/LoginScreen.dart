import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
        Row(
          children: [
            SizedBox(
              width: 60.w,
            ),
            Column(
              children: [
                SizedBox(
                  height: 200.h,
                ),
                SizedBox(
                  width: 316.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "LOG IN",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 20.sp)),
                        ),
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text(
                            'SIGN UP',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.4),
                                    fontSize: 20.sp)),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                SizedBox(
                  width: 316.w,
                  height: 70.5.h,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 30.h, horizontal: 10.w),
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color.fromARGB(255, 70, 77, 83),
                        hintText: "Username"),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: 316.w,
                  // height: 70.5.h,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 30.h, horizontal: 10.w),
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color.fromARGB(255, 70, 77, 83),
                        hintText: "Password"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 200.w),
                  child: const TextButton(
                      onPressed: null,
                      child: Text(
                        "LOG IN NOW",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
