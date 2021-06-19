import 'package:flutter/material.dart';
import 'package:duolegends/src/constants/colors.dart';

class DarkTheme {
  static ThemeData? apply() {
    final ColorsConstants? colors = new ColorsConstants();

    colors!.dark();

    return ThemeData(
      scaffoldBackgroundColor: colors.primary!,
      splashColor: colors.secondary!,
      accentColor: colors.secondary!,
      primaryColor: colors.quaternary!,
      buttonColor: colors.primary,
      textTheme: TextTheme(
        bodyText2: TextStyle(color: colors.quintenary),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
          foregroundColor: MaterialStateProperty.resolveWith((states) => colors.tertiary),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) => colors.quintenary),
          foregroundColor: MaterialStateProperty.resolveWith((states) => colors.tertiary),
          padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(vertical: 20)),
          shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 2, color: colors.quaternary!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 2, color: colors.secondary!),
        ),
      ),
    );
  }
}
