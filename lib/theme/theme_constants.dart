import 'package:flutter/material.dart';

const primarySwatchColor = Colors.red;
const buttonTextColor = Colors.black;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: const Color(0xFF980D0D),
      onPrimary: buttonTextColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.black),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.red),
    titleTextStyle: TextStyle(color: Colors.red, fontSize: 25),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: buttonTextColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.white),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: const Color(0xFF980D0D)),
    titleTextStyle: TextStyle(color: const Color(0xFF980D0D), fontSize: 25),
  ),
);
