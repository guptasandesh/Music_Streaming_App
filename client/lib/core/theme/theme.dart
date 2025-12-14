import 'package:client/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10)
      );
  }
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(18, 18, 18, 1),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(26),
      enabledBorder: _border(Pallete.borderColor),
      focusedBorder: _border(Pallete.gradient2),
    ),
  );
}
