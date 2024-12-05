import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:figma_to_flutter_movies_neon/Components/search_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true, // very useful. if not use show default disgusting padding
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
                      SearchFieldWidget(padding: EdgeInsets.all(10),),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'New movies',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                              fontSize: 17, color: Color(0xFFFFFFFF)),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      height: 160,
                      width: 143,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Transform.rotate(
                            angle:  0.039,
                            child: Container(
                              height: 160,
                              width: 142,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/image 91.png'),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle:  0.039,
                            child: Container(
                              height: 160,
                              width: 142,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/image 92.png'),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle:  0.039,
                            child: Container(
                              height: 160,
                              width: 142,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/image 90.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Upcoming movies',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                              fontSize: 17, color: Color(0xFFFFFFFF)),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      height: 160,
                      width: 143,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Transform.rotate(
                            angle:  0.039,
                            child: Container(
                              height: 160,
                              width: 142,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/image 93.png'),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle:  0.039,
                            child: Container(
                              height: 160,
                              width: 142,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/image 84.png'),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle:  0.039,
                            child: Container(
                              height: 160,
                              width: 142,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/image 94.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                  ],
                ))
          ],
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          // color: Colors.pink,
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
            Color(0xFFFE53BB).withOpacity(0.2),
              Color(0xFF09FBD3).withOpacity(0.2)
            ]
          )
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            // color: Colors.pink,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFE53BB),
                    Color(0xFF09FBD3)
                  ]
              )
          ),
          child: RawMaterialButton(
            onPressed: (){

            },
            shape: CircleBorder(),
            fillColor: Colors.black.withOpacity(0.4),
            child: Icon(Icons.add, color: Colors.white,size: 44,),
          ),
        ),
      ),
      bottomNavigationBar: GlassContainer(
        width: screenWidth,
        height: 92,
        borderRadius: BorderRadius.circular(0),
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.1),
          ]
        ),
        border: 0,
        blur: 30,
        borderGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [
              Colors.pink,
              Colors.green,
            ]
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(onPressed: (){
                
                }, icon: Icon(Icons.home,color: Colors.white,size: 34,)),
              ),
              Expanded(
                child: IconButton(onPressed: (){

                }, icon: Icon(CupertinoIcons.play_rectangle_fill,color: Colors.white,size: 34,)),
              ),
              Expanded(child: Text('')),  // this is use for center docker floating button
              Expanded(
                child: IconButton(onPressed: (){

                }, icon: Icon(Icons.file_copy_sharp,color: Colors.white,size: 34,)),
              ),
              Expanded(
                child: IconButton(onPressed: (){

                }, icon: Icon(Icons.download_for_offline_sharp,color: Colors.white,size: 34,)),
              )
            ],
          ),
        ),

      ),

    );
  }
}
