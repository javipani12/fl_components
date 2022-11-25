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

        // ListTile Theme
        listTileTheme: const ListTileThemeData(
          iconColor: primary,
        ),

        // TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom( 
            primary: primary
          )
        ),

        // FloatingActionButton Theme 
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
        ),

        // ElevatedButton Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primary,
            shape: const StadiumBorder(),
            elevation: 5
          )
        )
      );
  
}