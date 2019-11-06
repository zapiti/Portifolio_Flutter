


import 'package:flutter/material.dart';

import 'package:flutter_web_definitive/models/order_service/order_service.dart';
import 'package:pq_toast/pq_toast.dart';

List<DataRow> generateOrderServiceDataRows(List<OrderService> snapshot) {
  List<DataRow> newList = snapshot.map((OrderService _orderServices) {
    return DataRow(cells: [
      DataCell(Text('#${_orderServices.os}')),
      DataCell(Text('${_orderServices.data}')),
      DataCell(Text('${_orderServices.tipo}')),
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
