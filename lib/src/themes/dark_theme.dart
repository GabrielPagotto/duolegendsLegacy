import 'package:flutter/material.dart';
import 'package:duolegends/src/constants/colors.dart';

class DarkTheme {
  static ThemeData? apply() {
    final ColorsConstants? colors = new ColorsConstants();

    colors!.dark();

    return ThemeData(
      primaryColor: colors.primary,
      primaryColorDark: colors.tertiary,
      primaryColorLight: colors.quaternary,
      backgroundColor: colors.primary,
      splashColor: colors.secondary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors.secondary),
          textStyle: MaterialStateProperty.all(TextStyle(color: colors.primary)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(width: 1, color: colors.secondary),
          )),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            width: 2,
            color: colors.secondary,
          ),
        ),
        filled: true,
        fillColor: colors.quaternary,
        hintStyle: TextStyle(
          color: colors.quintenary,
          fontSize: 18,
        ),
      ),
      iconTheme: IconThemeData(
        color: colors.sextenary,
        size: 18,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: colors.quintenary, fontSize: 16),
        bodyText2: TextStyle(color: colors.sextenary, fontSize: 16),
        headline6: TextStyle(color: colors.sextenary, fontSize: 26),
        headline2: TextStyle(color: colors.quintenary, fontSize: 16),
      ),
    );
  }
}
