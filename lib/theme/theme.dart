import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: const Color(0xff416d6d),
      brightness: Brightness.light,
      cardColor: Colors.white,
      accentColor: Colors.black,
      canvasColor: Colors.grey[200],
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primaryColor: const Color(0xff416d6d),
      shadowColor: Colors.black,
      brightness: Brightness.dark,
      cardColor: Colors.black,
      accentColor: Colors.white,
      canvasColor: darkCreemColor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ));
  static Color darkCreemColor = Vx.gray800;
}