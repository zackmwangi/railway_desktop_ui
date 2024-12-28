import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
      //canvasColor: Colors.transparent,
      canvasColor: const Color.fromARGB(255, 255, 255, 255),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      //fontFamily: 'HelveticaNeue',
      textTheme: GoogleFonts.poppinsTextTheme(),
      //canvasColor: Colors.transparent,
      canvasColor: const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
