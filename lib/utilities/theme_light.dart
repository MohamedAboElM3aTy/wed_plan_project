import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './constants.dart';

ThemeData buildTheme() {
  return ThemeData(
    // useMaterial3: true,
    textTheme: GoogleFonts.latoTextTheme(),
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: const AppBarTheme().copyWith(),
    primaryColor: kColorScheme.primary,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: kColorScheme.primary,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kColorScheme.secondary,
      iconColor: kColorScheme.primary,
      prefixIconColor: kColorScheme.primary,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
