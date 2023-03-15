import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DTextTheme{
      static TextTheme lightTextTheme = TextTheme(titleLarge:GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    titleSmall:GoogleFonts.poppins(
      color: Colors.black54,
    ),);

      static TextTheme darkTextTheme = TextTheme(titleLarge:GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 25,
      fontWeight: FontWeight.bold,

    ),
    titleSmall:GoogleFonts.poppins(
      color: Colors.white60,
    ),);

}