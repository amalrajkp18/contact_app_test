import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.grey[100],
      appBarTheme: AppBarTheme(
        color: Colors.grey[100],
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: Colors.black87,
          fontSize: 22,
        ),
      ),
      fontFamily: GoogleFonts.poppins().fontFamily,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: CircleBorder(),
        backgroundColor: Colors.blueAccent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          backgroundColor: Colors.blueAccent,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      textTheme: TextTheme(
          displaySmall: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          bodyLarge: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 21,
          ),
          bodyMedium: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black87,
          ),
          bodySmall: GoogleFonts.poppins(
            color: Colors.grey,
          ),
          labelMedium: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          )),
    );
