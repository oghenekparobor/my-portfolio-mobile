import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.white,
      textTheme: TextTheme(
        headline1: GoogleFonts.abel(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 10,
        ),
        headline2: GoogleFonts.abel(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline3: GoogleFonts.abel(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: const Color(0xffD69976),
        ),
        headline4: GoogleFonts.abel(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        headline5: GoogleFonts.abel(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 10,
        ),
        bodyText1: GoogleFonts.abel(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Colors.black54,
        ),
      ),
    );

ThemeData darkTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.black87,
      textTheme: TextTheme(
        headline1: GoogleFonts.abel(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 10,
        ),
        headline2: GoogleFonts.abel(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        headline3: GoogleFonts.abel(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: const Color(0xffD69976),
        ),
        headline4: GoogleFonts.abel(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: Colors.white,
        ),
        bodyText1: GoogleFonts.abel(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Colors.white70,
        ),
        headline5: GoogleFonts.abel(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 10,
        ),
      ),
    );
