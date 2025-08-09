import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Style {
  static TextStyle publicStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.delius().fontFamily,
    color: Colors.white,
  );
}
