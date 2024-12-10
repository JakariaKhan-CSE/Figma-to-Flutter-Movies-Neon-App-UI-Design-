import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  height: screenHeight * 0.5,
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
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                right: 9,
                top: screenHeight * 0.42,
                child: Container(
                  padding: EdgeInsets.all(3),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)])),
                  child: Container(
                    // this container replace parent gradient
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.7)),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                )),
            Positioned(
                top: screenHeight * 0.42,
                left: 10,
                right: 80,
                child: Center(
                  child: Container(
                    color: Colors.black,
                    width: 400,
                    height: 220,
                    child: Column(
                      children: [
                        Text(
                          'Eternals',
                          style: GoogleFonts.openSans(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '2021   Action-Adventure-Fantasy   2h36m',
                          style: GoogleFonts.openSans(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RatingBar.builder(
                          unratedColor: Colors.white,
                          initialRating: 3,
                          minRating: 1,
                          allowHalfRating: true,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18, // get star icon size from figma design
                          itemPadding: EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Color(0xFFF4C465),
                          ),
                          onRatingUpdate: (value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white.withOpacity(0.75)),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(

                  child: Column(
                    children: [
                      // Container(height: 2,width: screenWidth,
                      // color: Colors.white.withOpacity(0.15),),
                      // SizedBox(height: 10,),
                      Text(
                        'Casts',
                        style: GoogleFonts.openSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [


                                Container(
                                  height: 50,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.6),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)
                                      )
                                  ),
                                  child: Center(child: Text('   Angelina Jolie',style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    color: Colors.white
                                  ),),),
                                ),
                                Positioned(
                                  left: -30,
                                  child: CircleAvatar(
                                    minRadius: 27,
                                    backgroundImage:  AssetImage('assets/image 77.png'),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [


                                Container(
                                  height: 50,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.black12.withOpacity(0.6),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50))
                                  ,),
                                  child: Center(child: Text('   Gemma Chan',style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      color: Colors.white
                                  ),),),
                                ),
                                Positioned(
                                  left: -30,
                                  child: CircleAvatar(
                                    minRadius: 27,
                                    backgroundImage:  AssetImage('assets/image 78.png'),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [


                                Container(
                                  height: 50,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.6),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50))),
                                  child: Center(child: Text('   Salma Hayek',style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      color: Colors.white
                                  ),),),
                                ),
                                Positioned(
                                  left: -30,
                                  child: CircleAvatar(
                                    minRadius: 27,
                                    backgroundImage:  AssetImage('assets/image 79.png'),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [


                                Container(
                                  height: 50,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.6),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50))),
                                  child: Center(child: Text('        Richard Madden',style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      color: Colors.white
                                  ),),),
                                ),
                                Positioned(
                                  left: -30,
                                  child: CircleAvatar(
                                    minRadius: 27,
                                    backgroundImage:  AssetImage('assets/image 80.png'),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
