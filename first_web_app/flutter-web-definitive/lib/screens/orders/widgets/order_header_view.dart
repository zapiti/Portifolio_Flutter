import 'package:flutter/material.dart';

Widget orderHeaderView(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? Row(
          children: <Widget>[
            Expanded(
              child: Text("Meus pedidos"),
            ),
            Container(
                width: 300,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: "Busca",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0)),
                )),
            Container(
              margin: EdgeInsets.only(top: 20, right: 20, left: 20),
              child: DropdownButton<String>(
                value: 'Selecione um contato',
                items: <String>['Selecione um contato', 'B', 'C', 'D']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ],
        )
      : Row(
          children: <Widget>[
            Expanded(
              child: Text("Meus pedidos"),
            ),
            Container(
                width: 300,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: "Busca",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0)),
                )),
          ],
        );
}
