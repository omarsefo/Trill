// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFFFC107);
const Color darkbgColor = Color(0xFF252523);
const Color lightbgColor = Color(0xFFFFFFFF);
const Color textColor = Color(0xFFFFFFFF);
const Color lightbottomColor = Color(0xFF757575);
const Color darkbottomColor = Color(0xFF353535);

const double defaultPadding = 16.0;
const double defaultBorderRadius = 12.0;
Widget appBarTitle = new Text("Trill");
Icon actionIcon = new Icon(Icons.search);

const kPrimaryColor = Color(0xFFFFC107);
const kPrimaryLightColor = Color(0xFFFFFBEE);
const circledarkColor = Color(0xFFCCCCCC);

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: darkbgColor,
    primaryColor: darkbgColor,
    colorScheme: ColorScheme.dark(),
    buttonColor: primaryColor,
    accentColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkbottomColor,
      elevation: 0,
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: lightbgColor,
    primaryColor: lightbgColor,
    colorScheme: ColorScheme.light(),
    buttonColor: primaryColor,
    accentColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightbottomColor,
      elevation: 0,
    ),
  );
}
