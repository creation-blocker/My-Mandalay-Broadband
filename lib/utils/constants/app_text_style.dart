import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextstyle {
  //Heading Text
  static TextStyle h1 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.9,
    color: Colors.white,
  );

  static TextStyle h2 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );

  static TextStyle h3 = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle appBarTitle = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xFF252A31),
  );

  //Body Text
  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xFF353E5C),
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Color(0xFF161342),
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF161342),
  );

  static TextStyle linkText = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xFF161342),
    decoration: TextDecoration.underline,
  );

  //Button Text
  static TextStyle butttonLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );

  static TextStyle buttonMedium = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle buttonSmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  //Label Text
  static TextStyle labelMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xFF353E5C),
  );

  static TextStyle hintText = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  static TextStyle withHeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }
}
