import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/order/order.dart';
import 'package:pq_toast/pq_toast.dart';

List<DataRow> generateOrderDataRows(List<Order> snapshot) {
  List<DataRow> newList = snapshot.map((Order _orders) {
    return DataRow(cells: [
      DataCell(Text('#${_orders.numPedido}')),
      DataCell(Text('${_orders.data}')),
      DataCell(Row(
        children: <Widget>[
          Container(
            width: 12.0,
            height: 12.0,
            margin: EdgeInsets.only(right: 10),
            decoration: new BoxDecoration(
              color: _orders.status == OrderStatus.APROVADO
                  ? Colors.green
                  : _orders.status == OrderStatus.PENDENTE
                      ? Colors.yellow
                      : _orders.status == OrderStatus.ENTREGUE
                          ? Colors.grey
                          : Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
          Text(
              "${_orders.status == OrderStatus.APROVADO ? "Aprovado" : _orders.status == OrderStatus.PENDENTE ? "Pendente" : _orders.status == OrderStatus.ENTREGUE ? "Entregue" : "Em transporte"}")
        ],
      )),
      DataCell(
        Container(
            height: 20,
            width: 80,
            child: FlatButton(
                child: Text("Ver"),
                onPressed: () {
                  Toast.showInfoToast("element ver");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red)))),
      ),
    ]);
  }).toList();

  return newList;
}
