import 'package:flutter/material.dart';

Container titleWidget() {
  return Container(
    margin: EdgeInsets.only(left: 0),
    child: Text(
      "Doctor Stone",
      style: TextStyle(
        fontSize: 24,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontFamily: 'HelveticaNeue',
      ),
    ),
  );
}