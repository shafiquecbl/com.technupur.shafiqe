import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shafique/utils/colors.dart';

ThemeData light({Color color = primaryColor, BuildContext? context}) =>
    ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      primaryColor: color,
      secondaryHeaderColor: const Color(0xFF1ED7AA),
      disabledColor: const Color(0xFFBABFC4),
      scaffoldBackgroundColor: backgroundColorLight,
      brightness: Brightness.light,
      hintColor: const Color(0xFF9F9F9F),
      cardColor: cardColorLight,
      dividerColor: const Color(0xFFDBE4E7),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: color)),
      colorScheme: ColorScheme.light(primary: color, secondary: color).copyWith(
          background: const Color(0xFFFFFFFF),
          error: const Color(0xFFdd3135),
          outline: const Color(0xFFF4F4F4)),
      textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context!).textTheme.copyWith(
              displayLarge: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              displayMedium: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              displaySmall: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              headlineMedium: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              bodyLarge: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              bodyMedium: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              bodySmall: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              titleMedium: const TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
              titleSmall: const TextStyle(
                fontSize: 8,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 10,
        color: backgroundColorLight,
        surfaceTintColor: backgroundColorLight,
        shadowColor: backgroundColorLight,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: false,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
