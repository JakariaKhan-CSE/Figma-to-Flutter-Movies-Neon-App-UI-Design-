import 'dart:ui';

import 'package:figma_to_flutter_movies_neon/Components/search_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      // extendBody: true, // this color goes also bottom
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
                top: screenHeight * 0.1,
                left: -88,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration:
                      BoxDecoration(color: Color(0xFF09FBD3).withOpacity(0.5), shape: BoxShape.circle),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 200,
                      width: 200,
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
                      color: Color(0xFFFE53BB).withOpacity(0.8), shape: BoxShape.circle),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                bottom: -100,
                left: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFF08F7FE).withOpacity(0.5), shape: BoxShape.circle),
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
                bottom: false, // very useful bottom safe area false
                child: ListView(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                        height: 76,
                        child: Text(
                          'What would you \nlike to watch?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                              fontSize: 28, color: Color(0xFFFFFFFF)),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                      SearchFieldWidget(padding: EdgeInsets.all(10),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
