import 'package:flutter/material.dart';

class BottomInitialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   MediaQuery.of(context).size.width > 800 ?
    Row(
      children: bottomWidget(context,1),
    ): Column(
      children: bottomWidget(context,0),
    );
  }
}

List<Widget> bottomWidget(BuildContext context,int flex){
  return <Widget>[
    Expanded(
      flex: flex,
      child:
      Container(height: 300,width:  MediaQuery.of(context).size.width,color: Colors.blue,),
    ),
    Expanded(
      flex: flex,
      child:
      Container(height: 300,width:  MediaQuery.of(context).size.width,color: Colors.green,),
    )

  ];
}

