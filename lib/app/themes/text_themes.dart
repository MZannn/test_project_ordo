import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project_ordo/app/constants/color_constants.dart';

class Themes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: ColorConstants.mainPurple,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: ColorConstants.black,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: ColorConstants.gray3,
      ),
    ),
  );
}
