import 'package:flutter_web/material.dart';

import 'package:web_flutter/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu), 
          onPressed: () => {print("leading")},
        ),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          
          "Testando",
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),

        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              IconData(0xe6e5, fontFamily: 'iconfont'), //Iconfont
            ),
          )
        ],
      ),

      body: Stack(
        children: [Body()],
      ),
    );
  }
}
