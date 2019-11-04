import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Container(
      margin: EdgeInsets.only(top: 20,left: 10,right: 10),
      child: Card(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(margin: EdgeInsets.all(20),child:
            Text(
              "Meus dados",
              style: TextStyle(fontSize: 22),
            ) ,)
            ,SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("CNPJ:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("12.234.231/0001-89", style: TextStyle())
              ],
            ),SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("Razão Social:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("Nome da empresa", style: TextStyle())
              ],
            ),SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("Endereço cobrança:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("Rua José Manuel Filho, 312 - Parque Floresta", style: TextStyle())
              ],
            ),SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("Endereço entrega:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("Rua José Manuel Filho, 312 - Parque Floresta", style: TextStyle())
              ],
            ),SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("Responsável:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("Fernando da Silva", style: TextStyle())
              ],
            ),SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("Telefone contato:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("(34) 33333-3333", style: TextStyle())
              ],
            ),SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30,),
                Text("E-mail de contato:", style: TextStyle(color: Colors.grey[400])),SizedBox(width: 10),
                Text("emaildocliente@empresa1.com.br", style: TextStyle())
              ],
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
        ));
  }
}
