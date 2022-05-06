import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.blueGrey[50],
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
    ),
    primaryColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
      ),
    ),
    toggleableActiveColor: Colors.black,
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.white,
      secondary: Colors.white,
      surface: Colors.grey[800],
      onPrimary: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.grey[900],
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
    ),
    toggleableActiveColor: Colors.white,
    primaryColor: Colors.grey[800],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white, // Text color
      ),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.grey[800],
      secondary: Colors.grey[500],
      surface: Colors.grey[800],
    ),
  );
}
