// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFFE53935),
      textTheme: TextTheme(
        labelSmall: GoogleFonts.montserrat(
          fontSize: 12,
        ),
        bodyMedium: GoogleFonts.dmSans(
            fontSize: 12,
            color: ColorTheme.blueheading,
            fontWeight: FontWeight.w400),
        labelMedium: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: GoogleFonts.raleway(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ColorTheme {
  static const black = Colors.black;
  static const green = Color(0xFF8BC83F);
  static const greenaccent = Color(0xFF8BC83D);
  static const greenlight = Color(0xFFDAEDC2);
  static const white = Color(0xFFFFFFFF);
  static const white1 = Color(0xFFF5F4F8);
  static const white2 = Color(0xFFE5E5E5);
  static const grey = Color(0xFFDFDFDF);
  static const locationcolor = Color(0xFFECEDF3);
  static const lightdark = Color(0xFF53587A);
  static const lightwhite = Color(0xFFA1A5C1);
  static const orablue = Color(0xFF21628A);
  static const blue = Color(0xFF1F4C6B);
  static const blueAccent = Color(0xFF204D6C);
  static const gradiantpinkl = Color(0xFF634AFD);
  static const blueheading = Color(0xFF252B5C);
  static const skip = Color(0xFF3A3F67);
  static const darkblue = Color(0xFF234F68);
  static const staryellow = Color(0xFFFFC42D);
  static const greyopasity = Color(0xFFE5E5E5);
  static const transparent = Colors.transparent;
}
