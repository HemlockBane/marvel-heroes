import 'package:flutter/material.dart';
import './screens/home.dart';
import './widgets/theme.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel App',
      theme: MarvelAppTheme().getDefaultAppTheme(),
      home: HomeScreen(title: 'Marvel'),
    );
  }
}
