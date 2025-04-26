import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color(0xFFB71C1C); 
  static const Color secondaryColor = Colors.white;
  static const Color backgroundColor = Color.fromARGB(255, 238, 238, 238);
  static const Color textColor = Colors.black87;
  static const Color warningColor = Color(0xFFD32F2F); 

  static TextStyle titleTextStyle({double fontSize = 22}) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  static TextStyle bodyTextStyle({double fontSize = 16, Color color = textColor}) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: fontSize,
      color: color,
    );
  }


  static TextStyle buttonTextStyle({double fontSize = 16, Color color = secondaryColor}) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: fontSize,
      color: color,
    );
  }

  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      onPrimary: secondaryColor,
      surface: secondaryColor,
      onSurface: textColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: const IconThemeData(color: secondaryColor),
      titleTextStyle: titleTextStyle(fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: bodyTextStyle(fontSize: 18),
      bodyMedium: bodyTextStyle(fontSize: 16),
      bodySmall: bodyTextStyle(fontSize: 14),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: secondaryColor,
    ),
    cardTheme: CardTheme(
      color: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    ),
  );
}
