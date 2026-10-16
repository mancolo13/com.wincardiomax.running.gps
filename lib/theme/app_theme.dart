import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFCCFF00);
  static const Color secondaryColor = Color(0xFFE6FF80);
  static const Color backgroundColor = Color(0xFF0C0E0A);
  static const Color surfaceColor = Color(0xFF181C14);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
