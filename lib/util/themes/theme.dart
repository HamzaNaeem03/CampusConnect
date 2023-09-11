import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custommaterialcolor.dart';

class AppTheme {
  static ThemeData customTheme = ThemeData(
    primaryColor: colorCustom,
    primarySwatch: colorCustom,
    // iconTheme:IconThemeData(color: colorCustom) ,
    textTheme: TextTheme(
displayLarge: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,fontSize: 18
         ,

        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      displayMedium: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,fontSize: 16 ,

        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      titleMedium: GoogleFonts.figtree(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      titleSmall: GoogleFonts.figtree(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        // color:  Colors.white,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ),
    ),
  );
}
