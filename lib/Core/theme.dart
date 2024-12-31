import 'package:flutter/material.dart';

class Themee {
  static Color greenColor = const Color(0xFF39A552);

  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color:
              Colors.white, // Color of drawer icon (or any other app bar icon)
        ),
        backgroundColor: greenColor,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), // Border radius for bottom-left
            bottomRight: Radius.circular(30), // Border radius for bottom-right
          ),
        ),
      ),
      primaryColor: greenColor,
      textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w700)));
}
