import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle defaultStyle = GoogleFonts.roboto(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ));


List<Widget> generateStars() {
  List<Widget> stars = [];
  for (int i = 0; i < 5; i++) {
    stars.add(
      const Icon(Icons.star, color: Color(0xFFF4C465), size: 20),
    );
  }
  return stars;
}