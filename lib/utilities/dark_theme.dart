import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildDarkTheme() {
  return ThemeData(
    textTheme: GoogleFonts.latoTextTheme(),
    fontFamily: GoogleFonts.lato().fontFamily,
    colorSchemeSeed: Colors.black54,
  );
}
