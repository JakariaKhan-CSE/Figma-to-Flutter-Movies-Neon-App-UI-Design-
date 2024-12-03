import 'dart:ui';

import 'package:figma_to_flutter_movies_neon/Components/CustomOutLine.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
                top: screenHeight * 0.1,
                left: -88,
                child: Container(
                  height: 166,
                  width: 166,
                  decoration:
                      BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                top: screenHeight * 0.3,
                right: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            SafeArea(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.07,
                  ),
                  CustomOutlineButton(
                    strokeWidth: 4,
                    radius: screenWidth * 0.8,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFFE53BB),
                          Color(0xFF9E95C4).withOpacity(
                              0.8), // this color code get from figma design Linear(also get opacity)
                          Color(0xFF6AB9CA).withOpacity(0.8),
                          Color(0xFF09FBD3),
                        ],
                        stops: [
                          0.2,
                          0.4,
                          0.6,
                          1
                        ]),
                    child: ClipOval(
                        child: SizedBox(
                            height: screenWidth * 0.8,
                            width: screenWidth * 0.8,
                            child: Image.asset(
                              'assets/image_81.png',
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomLeft,
                            ))),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: screenHeight * 0.09,
                  ),
                  Text(
                    'Watch movies in \nVirtual Reality',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        fontSize: screenHeight <= 667 ? 18 : 34,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Text(
                    'Download and watch offline \nwherever you are',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  CustomOutlineButton(
                    strokeWidth: 3,
                    radius: 20,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFFE53BB),
                          Color(0xFF9E95C4).withOpacity(
                              0.5), // this color code get from figma design Linear(also get opacity)
                          Color(0xFF6AB9CA).withOpacity(0.5),
                          Color(0xFF09FBD3),
                        ],
                        stops: [
                          0.2,
                          0.4,
                          0.6,
                          1
                        ]),
                    child: SizedBox(
                      height: 41,
                      width: 160,
                      child:  Center(
                        child: Text(
                          'Sign up',

                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => Container(
                      height: 7,width: 7,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index==0?Colors.green:Colors.grey
                      ),
                    ),),
                  ),
                  Spacer(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
