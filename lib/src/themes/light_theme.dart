import 'package:flutter/material.dart';
import 'package:duolegends/src/constants/colors.dart';

class LightTheme {
  static ThemeData? apply() {
    final ColorsConstants? colors = new ColorsConstants();

    colors!.light();

    return ThemeData(
      scaffoldBackgroundColor: colors.primary!,
      splashColor: colors.secondary!,
      accentColor: colors.tertiary!,
      primaryColor: colors.quaternary!,
      buttonColor: colors.primary,
      hintColor: colors.secondary,
      dividerColor: colors.primary,
      primaryColorLight: colors.primary,
      indicatorColor: colors.tertiary,
      toggleableActiveColor: colors.primary,
      errorColor: colors.quaternary,
      applyElevationOverlayColor: true,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: colors.quintenary,
          fontSize: 16,
        ),
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
          padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(vertical: 18)),
          textStyle: MaterialStateProperty.resolveWith(
            (states) => TextStyle(
              fontSize: 18,
            ),
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
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
