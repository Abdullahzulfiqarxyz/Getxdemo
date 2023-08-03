import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF008F7A),
    scaffoldBackgroundColor: const Color(0xFF008F7A),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF008F7A),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00A57A), // Greenish color
        foregroundColor: Colors.white, // White text
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white, // White text
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[200], // Adjusted background color
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey[400] ?? Colors.grey), // Adjusted border color
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey[600] ??
                Colors.grey), // Adjusted focused border color
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.symmetric(
          vertical: 16, horizontal: 16), // Adjusted content padding
      labelStyle: TextStyle(
          color: const Color(0xFF008F7A)), // Adjusted label text color
      hintStyle: TextStyle(color: Colors.grey[600]), // Adjusted hint text color
    ),
    // Add more theme attributes as needed
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF008F7A),
    scaffoldBackgroundColor: const Color(0xFF121212), // Dark background color
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF121212),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00A57A), // Greenish color
        foregroundColor: Colors.white, // White text
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white, // White text
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[800], // Adjusted background color
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.greenAccent, // Adjust focused border color
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.greenAccent, // Adjust enabled border color
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      labelStyle: TextStyle(color: Colors.white), // White label text color
      hintStyle: TextStyle(color: Colors.grey), // Grey hint text color
    ),
    // Add more theme attributes as needed
  );
}
