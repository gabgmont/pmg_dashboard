import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PmgTypography {
  static h1({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 96,
        fontWeight: FontWeight.normal,
        height: 1,
      );

  static h2({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 64,
        fontWeight: FontWeight.normal,
        height: 1,
      );

  static h3({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 48,
        fontWeight: FontWeight.normal,
        height: 1,
      );

  static h1SemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 64,
        fontWeight: FontWeight.w600,
        height: 1,
      );

  static h2SemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 52,
        fontWeight: FontWeight.w600,
        height: 1,
      );

  static h3SemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1,
      );

  static bodyLarge({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: 32,
        height: 1,
      );

  static bodyMedium({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: 24,
        height: 1,
      );

  static bodySmall({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: 18,
        height: 1,
      );

  static bodyTiny({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );

  static bodyLargeSemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 32,
        height: 1,
      );
  static bodyMediumSemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1,
      );
  static bodySmallSemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 1,
      );
  static bodyTinySemiBold({Color? color}) => GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}
