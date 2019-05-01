import 'package:flutter/material.dart';

class MarvelAppTheme {

static final Color marvelRed = Color(0xfff30e0d);

  ThemeData getAppTheme(){
    final ThemeData baseTheme = ThemeData.light();
    return baseTheme.copyWith(
      textTheme: TextTheme(
      )
    );
  }


}