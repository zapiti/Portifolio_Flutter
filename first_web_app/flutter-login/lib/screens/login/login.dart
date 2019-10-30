import 'package:flutter_web/material.dart';
import 'package:web_flutter/screens/home/home_screen.dart';

import 'package:web_flutter/utils/color_constants.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final email = Container(
                                       height: 50,
                                       width: 500,
                                       child: TextField(
                                         decoration: InputDecoration(
                                           border: OutlineInputBorder(
                                               borderRadius: BorderRadius.all(
                                                   Radius.circular(10))),
                                           labelText: "Endereço",
                                         ),
                                       ),
                                     )
;

    final password = Container(
      margin:EdgeInsets.only(right: 20,left: 20),
      child:TextField(
      maxLines: 1,
      decoration: InputDecoration(
          hintText: "Senha", border: OutlineInputBorder(), labelText: "Senha"),
    ));

    final loginButton = Container(
       margin:EdgeInsets.only(right: 20,left: 20),
       width: MediaQuery.of(context).size.width ,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        padding: EdgeInsets.all(20),
        color: ColorConstants.orange,
        child: Text('Entrar',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Lembrar senha',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: ColorConstants.orange,
              ),
            ],
          ),
          Center(
              child: Container(
            height: heightLoginContainer(context),
            width: widthLoginContainer(context),
            child: Card(
                elevation: 2.0,
                
                child: Row(
                  children: <Widget>[
                    Container(
                      width: widthLoginSpace(context),
                      color: Colors.white,
                    ),

                 
              
                    Expanded(
                    
                      child:    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        
                        children: <Widget>[
                          Center(
                            child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    'https://assets1.ignimgs.com/thumbs/userUploaded/2019/5/29/drstone-1559174341319.jpg')),
                          ),
                          SizedBox(height: 8.0),
                          Center(
                              child: Text(
                            "Doctor stone",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          SizedBox(height: 20.0),
                          email,
                          SizedBox(height: 8.0),
                          password,
                          SizedBox(height: 24.0),
                       
                    
                          loginButton,
                          forgotLabel,
                        ],
                      ),
                    )      ,),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}

double heightLoginContainer( BuildContext context){
 return MediaQuery.of(context).size.height / 1.2;
}
double widthLoginContainer(BuildContext context){
 return  MediaQuery.of(context).size.width > 1000 ?MediaQuery.of(context).size.width / 1.8  : MediaQuery.of(context).size.width / 1.2 ;
}
double widthLoginSpace(BuildContext context){
 return  MediaQuery.of(context).size.width < 700 ? 0 :MediaQuery.of(context).size.width < 1000 ? MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 5;
}