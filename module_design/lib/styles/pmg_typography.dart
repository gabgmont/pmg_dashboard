import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PmgTypography {
  static h1Bold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 96,
        fontWeight: FontWeight.bold,
      );

  static h2Bold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 64,
        fontWeight: FontWeight.bold,
      );

  static h3Bold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 48,
        fontWeight: FontWeight.bold,
      );

  static bodyLarge({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 32,
      );

  static bodyMedium({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 24,
      );

  static bodySmall({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 18,
      );

  static bodyTiny({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 14,
      );
}
