import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color del AppBar Theme
        appBarTheme: AppBarTheme(
          color: primary,
          elevation: 0,
        ),

        //Color del listTile
        listTileTheme: ListTileThemeData(
          iconColor: primary,
        ),

        //Color del TextButton
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary),
        ), 

        //floatingActionButton
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
        ),

        //ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primary,
            shape: StadiumBorder(),
            elevation: 0,
          )
        )

      );
}