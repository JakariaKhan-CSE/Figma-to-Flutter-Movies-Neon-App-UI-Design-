import 'package:figma_to_flutter_movies_neon/screen/home_screen.dart';
import 'package:figma_to_flutter_movies_neon/screen/movies_details.dart';
import 'package:figma_to_flutter_movies_neon/screen/onboarding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily
      ),
      home: MoviesDetails(),
    );
  }
}
