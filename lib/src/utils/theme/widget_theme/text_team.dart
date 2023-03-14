import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DTextTheme{
      static TextTheme lightTextTheme = TextTheme(titleMedium:GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    titleSmall:GoogleFonts.poppins(
      color: Colors.black54,
    ),);

      static TextTheme darkTextTheme = TextTheme(titleMedium:GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    titleSmall:GoogleFonts.poppins(
      color: Colors.white60,
    ),);

}