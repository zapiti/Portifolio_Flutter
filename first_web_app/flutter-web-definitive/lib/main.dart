import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/home.dart';
import 'package:flutter_web_definitive/screens/home/home_screen.dart';
import 'package:flutter_web_definitive/screens/login/login.dart';

import 'demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => HomeScreen(),
      '/home': (BuildContext context) => HomeScreen(),
    };
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
      theme: ThemeData(fontFamily: 'HelveticaNeue'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}
