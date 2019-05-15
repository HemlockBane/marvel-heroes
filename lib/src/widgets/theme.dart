import 'package:flutter/material.dart';

class MarvelAppTheme {

static final Color marvelRed = Color(0xfff30e0d);

  ThemeData getDefaultAppTheme(){
    final ThemeData baseTheme = ThemeData.light();
    return baseTheme.copyWith(
      primaryColor: Colors.black,
      primaryColorLight: marvelRed,
      appBarTheme: AppBarTheme(color: Colors.white, elevation: 0.0),
      primaryIconTheme: IconThemeData(color: Colors.black),
    );
  }


}