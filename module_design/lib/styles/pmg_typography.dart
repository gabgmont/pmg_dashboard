import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PmgTypography {
  static h1Bold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 96,
        fontWeight: FontWeight.bold,
        height: 1,
      );

  static h2Bold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 64,
        fontWeight: FontWeight.bold,
        height: 1,
      );

  static h3Bold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 48,
        fontWeight: FontWeight.bold,
        height: 1,
      );

  static bodyLarge({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 32,
        height: 1,
      );

  static bodyMedium({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 24,
        height: 1,
      );

  static bodySmall({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 18,
        height: 1,
      );

  static bodyTiny({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 14,
        height: 1,
      );
}
