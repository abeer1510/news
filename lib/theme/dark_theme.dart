import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/theme/theme.dart';


class DarkTheme extends BaseTheme{
  @override
  Color get backgroundColor => Colors.black;

  @override
  Color get primaryColor => Color(0xffA0A0A0);

  @override
  Color get textColor => Color(0xffffffff);

  @override
  ThemeData get themeData => ThemeData(
      primaryColor: primaryColor,
    cardColor: textColor,
    canvasColor: backgroundColor,
    scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: backgroundColor,
        iconTheme: IconThemeData(color: textColor),
      ),

      textTheme: TextTheme(
        titleSmall: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize:24,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),


  );


}