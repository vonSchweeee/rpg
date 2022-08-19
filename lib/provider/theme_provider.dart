import 'package:flutter/material.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );
}