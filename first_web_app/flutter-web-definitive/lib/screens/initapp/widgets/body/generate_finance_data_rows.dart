
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/finance/finance.dart';
import 'package:pq_toast/pq_toast.dart';

List<DataRow> generateFinanceDataRows(List<Finance> snapshot) {
  List<DataRow> newList = snapshot.map((Finance _finances) {
    return DataRow(cells: [
      DataCell(Text('#${_finances.fatura}')),
      DataCell(Text('${_finances.dataVenc}')),
      DataCell(Text('R\$ ${_finances.valores.toStringAsFixed(2)}')),
      DataCell(Text('${_finances.natureza}')),
      DataCell(Row(
        children: <Widget>[
          Container(
            width: 12.0,
            height: 12.0,
            margin: EdgeInsets.only(right: 10),
            decoration: new BoxDecoration(
              color: _finances.status == FinanceStatus.PAGO
                  ? Colors.green
                  : _finances.status == FinanceStatus.EM_ABERTO
                  ? Colors.yellow
                  : Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Text(
              "${_finances.status == FinanceStatus.PAGO ? "Pago" : _finances.status == FinanceStatus.EM_ABERTO ? "Em andamento" : "Vencido"}")
        ],
      )),
      DataCell(Row(children: <Widget>[
        InkWell(
          child: Icon(Icons.reorder),
          onTap: () {
            Toast.showInfoToast("Barcode ${_finances.valores}");
          },
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          child: Icon(Icons.chrome_reader_mode),
          onTap: () {
            Toast.showInfoToast("element ${_finances.valores}");
          },
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          child: Icon(Icons.table_chart),
          onTap: () {
            Toast.showInfoToast("chart ${_finances.valores}");
          },
        ),
      ]))
    ]);
  }).toList();

  return newList;
}
