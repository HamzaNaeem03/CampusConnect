import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custommaterialcolor.dart';

class AppTheme {
  static ThemeData customTheme = ThemeData(
    primaryColor: colorCustom,
    primarySwatch: colorCustom,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      displaySmall: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      titleLarge: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(76, 175, 199, 1.0),
      ),
      titleMedium: GoogleFonts.figtree(
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),
      titleSmall: GoogleFonts.figtree(
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(186, 188, 197, 1.0),
      ),
    ),
  );
}
