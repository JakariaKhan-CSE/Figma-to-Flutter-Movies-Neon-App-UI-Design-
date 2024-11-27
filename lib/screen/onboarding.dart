import 'dart:ui';

import 'package:flutter/material.dart';

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
                top: screenHeight*0.1,
                left: -88,
                child: Container(
                  height: 166,
                  width: 166,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200
                    ),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                top: screenHeight*0.3,
                right: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 200,
                        sigmaY: 200
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            SafeArea(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight*0.07,),
                
              ],
            ))
          ],
        ),
      ),
    );
  }
}
