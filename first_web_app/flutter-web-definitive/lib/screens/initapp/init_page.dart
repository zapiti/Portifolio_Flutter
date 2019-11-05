import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/initapp/initial_bloc.dart';
import 'package:flutter_web_definitive/screens/initapp/widgets/body_initial_view.dart';
import 'package:flutter_web_definitive/screens/initapp/widgets/bottom_initial_view.dart';
import 'package:flutter_web_definitive/screens/initapp/widgets/header_initial_view.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}



class _InitPageState extends State<InitPage> {
  @override
  void initState() {
    blocInitial.getBanners();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      children: <Widget>[
        HeaderInitialView(),
        BodyInitialView(),
        BottomInitialView()
      ],
    ));
  }
}


