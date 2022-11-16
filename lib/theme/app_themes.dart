import 'package:flutter/material.dart';

class AppThemes{
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color Primario
        primaryColor: primary,

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),

        listTileTheme: const ListTileThemeData(
          iconColor: primary,
        ),
      );
  
}