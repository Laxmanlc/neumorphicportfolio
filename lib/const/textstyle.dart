import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle cairoTextstyle({
  double fontSize = 16.0,
  FontWeight fontweight = FontWeight.normal,
  FontStyle fontstyle = FontStyle.normal,
  Color color = Colors.black,
}) {
  return GoogleFonts.cairo(
      fontSize: fontSize,
      fontWeight: fontweight,
      color: color,
      decoration: TextDecoration.none);
}
