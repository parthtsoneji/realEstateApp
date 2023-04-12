import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFFE53935),
      textTheme: TextTheme(
          labelMedium: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w700),
        labelSmall: GoogleFonts.montserrat(fontSize: 12),
          labelLarge: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.bold)
      ),

    );
  }
}

class ColorTheme {
  static const deepaccent = Color(0xFF8BC83F);
  static const white = Color(0xFFE5E5E5);
  static const green = Color(0xFF8BC83F);
  static const orablue = Color(0xFF21628A);
  static const hexablue = Color(0xFF1F4C6B);
}
