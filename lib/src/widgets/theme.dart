import 'package:flutter/material.dart';
import 'bubble_tab_indicator.dart';

class MarvelAppTheme {
  double _labelFontSize = 13.0;

  static final Color marvelRed = Color(0xfff30e0d);

  ThemeData getDefaultAppTheme() {
    final ThemeData baseTheme = ThemeData.light();
    return baseTheme.copyWith(
        primaryColor: Colors.black,
        primaryColorLight: marvelRed,
        primaryIconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          labelStyle: TextStyle(
              fontSize: _labelFontSize,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500),
          unselectedLabelColor: Colors.black,
          unselectedLabelStyle: TextStyle(fontSize: _labelFontSize),
          indicator: BubbleTabIndicator(
            indicatorColor: marvelRed,
            indicatorHeight: 28,
            indicatorRadius: 15,
            tabBarIndicatorSize: TabBarIndicatorSize.label,
          ),
          indicatorSize: TabBarIndicatorSize.label,
        ),
        textTheme: baseTheme.textTheme.copyWith(
            title: baseTheme.textTheme.title.copyWith(
                fontFamily: 'SF Pro Text',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          body1: baseTheme.textTheme.body1.copyWith(
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              fontWeight: FontWeight.w500), //  SF Pro Text Medium
          body2: baseTheme.textTheme.body2.copyWith(
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              fontWeight: FontWeight.w400), // SF Pro Text Regular
          display1: baseTheme.textTheme.display1.copyWith(
              fontFamily: 'SF Pro Text',
              fontSize: 22,
              fontWeight: FontWeight.w700), // SF Pro Text Heavy
        ));
  }
}
