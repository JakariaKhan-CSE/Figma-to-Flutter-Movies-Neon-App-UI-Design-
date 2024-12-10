import 'package:flutter/material.dart';

class MoviesDetails extends StatefulWidget {
  const MoviesDetails({super.key});

  @override
  State<MoviesDetails> createState() => _MoviesDetailsState();
}

class _MoviesDetailsState extends State<MoviesDetails> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xFF19191B)])),
        child: Stack(
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                  height: screenHeight * 0.6,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image 76.png'))),
                )),
            Positioned(
                top: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Icon(Icons.keyboard_backspace,color: Colors.white,),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Icon(Icons.menu,color: Colors.white,),
                      ),
                    ],
                  ),
                )),
            Positioned(
                right: 9,
                top: screenHeight*0.42,
                
                child: Container(
                  padding: EdgeInsets.all(3),
              height: 60,
              width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors:[
                        Color(0xFFFE53BB),
                        Color(0xFF09FBD3)
                      ]
                    )
                  ),
                  child: Container(  // this container replace parent gradient
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.7)
                    ),
                    child: Icon(Icons.play_arrow,color: Colors.white,size: 32,),
                  ),

            ))
          ],
        ),
      ),
    );
  }
}
