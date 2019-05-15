import 'package:flutter/material.dart';
import 'bubble_tab_indicator.dart';

class MarvelAppTheme {

  double _labelStyle = 17.0;

static final Color marvelRed = Color(0xfff30e0d);

  ThemeData getDefaultAppTheme(){
    final ThemeData baseTheme = ThemeData.light();
    return baseTheme.copyWith(
      primaryColor: Colors.black,
      primaryColorLight: marvelRed,
      appBarTheme: AppBarTheme(color: Colors.white, elevation: 0.0),
      tabBarTheme: TabBarTheme(
        labelColor: MarvelAppTheme.marvelRed,
        labelStyle: TextStyle(fontSize: _labelStyle),
        unselectedLabelColor: Colors.grey,
        unselectedLabelStyle: TextStyle(fontSize: _labelStyle),
        indicator: BubbleTabIndicator(
            indicatorColor: Colors.black,
            indicatorHeight: 30,
            indicatorRadius: 10,
            tabBarIndicatorSize: TabBarIndicatorSize.label,
        ),
        indicatorSize: TabBarIndicatorSize.label,
      ),
      primaryIconTheme: IconThemeData(color: Colors.black),
    );
  }


}