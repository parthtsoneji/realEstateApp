// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFFE53935),
      textTheme: TextTheme(
          labelSmall:
              GoogleFonts.montserrat(fontSize: 12, color: ColorTheme.white),
          bodyMedium: GoogleFonts.dmSans(fontSize: 12,color: ColorTheme.darktype,fontWeight: FontWeight.w400),
          labelMedium:
              GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w700),
          labelLarge:
              GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.bold)),
    );
  }
}

class ColorTheme {
  static const trasnparent = Colors.transparent;
  static const deepaccent = Color(0xFF8BC83F);
  static const white = Color(0xFFFFFFFF);
  static const green = Color(0xFF8BC83F);
  static const white1 = Color(0xFFF5F4F8);
  static const orablue = Color(0xFF21628A);
  static const hexablue = Color(0xFF1F4C6B);
  static const grey = Color(0xFFDFDFDF);
  static const greenadd = Color(0xFF8BC83D);
  static const black = Colors.black;
  static const lightwhite = Color(0xFFA1A5C1);
  static const blueaccess = Color(0xFF204D6C);
  static const darkblue = Color(0xFF252B5C);
  static const darktype = Color(0xFF53587A);
  static const regterm = Color(0xFF1F4C6B);
  static const skip = Color(0xFF3A3F67);
  static const gradiantpinkl = Color(0xFF634AFD);
  static const locationcolor = Color(0xFFECEDF3);
  static const checkcard = Color(0xFF1F4C6B);
}
