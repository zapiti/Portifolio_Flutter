import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/userdata/user_data_bloc.dart';
import 'package:flutter_web_definitive/models/userdata/user_data.dart';

class UserDataPage extends StatefulWidget {
  @override
  _UserDataPageState createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  @override
  void initState() {
    blocUserData.getUserData();
    super.initState();
  }

  @override
  void dispose() {
    blocUserData.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserData>(
        stream: blocUserData.userData,
        builder: (BuildContext context, AsyncSnapshot<UserData> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                  strokeWidth: 5,
                ),
              );
            default:
              if (snapshot.hasError)
                return Container();
              else
                return SingleChildScrollView(
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Text(
                            "Meus dados",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("CNPJ:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.cnpj, style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("Razão Social:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.razao_social, style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("Endereço cobrança:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.endereco_cobr,
                                style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("Endereço entrega:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.endereco_entrega,
                                style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("Responsável:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.responsavel, style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("Telefone contato:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.telefone, style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text("E-mail de contato:",
                                style: TextStyle(color: Colors.grey[400])),
                            SizedBox(width: 10),
                            Text(snapshot.data.email, style: TextStyle())
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                );
          }
        });
  }
}
