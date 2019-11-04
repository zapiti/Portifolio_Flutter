import 'package:flutter/material.dart';
import 'package:flutter_bloc_web/ui/homedrawer/home_nav_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeNavDrawer(),
    );
  }
}
