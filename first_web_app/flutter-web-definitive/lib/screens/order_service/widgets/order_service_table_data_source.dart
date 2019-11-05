import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/order_service/order_service.dart';
import 'package:pq_toast/pq_toast.dart';

class OrderServiceTableDataSource extends DataTableSource {
  final List<OrderService> _orderServices;

  OrderServiceTableDataSource(this._orderServices);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('#${_orderServices[index].os}')),
        DataCell(Text('${_orderServices[index].data}')),
        DataCell(Text('${_orderServices[index].tipo}')),
        DataCell(Text('${_orderServices[index].endereco}')),
        DataCell(Text('${_orderServices[index].descricao}')),
        DataCell(Row(
          children: <Widget>[
            Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.only(right: 10),
              decoration: new BoxDecoration(
                color:
                    _orderServices[index].status == OrderServiceStatus.CONCLUIDO
                        ? Colors.green
                        : Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
            Text(
                "${_orderServices[index].status == OrderServiceStatus.CONCLUIDO ? "Concluido" : "Pendente"}")
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
      _orderServices?.length ??
      0; // Manipulate this to which ever value you wish

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
