import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/order/order.dart';
import 'package:pq_toast/pq_toast.dart';

class OrderTableDataSource extends DataTableSource {
  final List<Order> _orders;

  OrderTableDataSource(this._orders);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('#${_orders[index].numPedido}')),
        DataCell(Text('${_orders[index].data}')),
        DataCell(Text('R\$ ${(_orders[index].total).toStringAsFixed(2)}')),
        DataCell(Text('${_orders[index].previsao}')),
        DataCell(Row(
          children: <Widget>[
            Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.only(right: 10),
              decoration: new BoxDecoration(
                color: _orders[index].status == OrderStatus.APROVADO
                    ? Colors.green
                    : _orders[index].status == OrderStatus.PENDENTE
                    ? Colors.yellow
                    : _orders[index].status == OrderStatus.ENTREGUE
                    ? Colors.grey
                    : Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            Text(
                "${_orders[index].status == OrderStatus.APROVADO ? "Aprovado" : _orders[index].status == OrderStatus.PENDENTE ? "Pendente" : _orders[index].status == OrderStatus.ENTREGUE ? "Entregue" : "Em transporte"}")
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
      ],
    );
  }

  @override
  int get rowCount =>
      _orders?.length ?? 0; // Manipulate this to which ever value you wish

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
