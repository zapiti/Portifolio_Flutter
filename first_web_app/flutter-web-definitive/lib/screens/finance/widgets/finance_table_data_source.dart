import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/finance/finance.dart';
import 'package:pq_toast/pq_toast.dart';

class FinanceTableDataSource extends DataTableSource {
  final List<Finance> _finances;

  FinanceTableDataSource(this._finances);

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('#${_finances[index].fatura}')),
        DataCell(Text('${_finances[index].dataVenc}')),
        DataCell(Text('R\$ ${_finances[index].valores.toStringAsFixed(2)}')),
        DataCell(Text('${_finances[index].natureza}')),
        DataCell(Row(
          children: <Widget>[
            Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.only(right: 10),
              decoration: new BoxDecoration(
                color: _finances[index].status == FinanceStatus.PAGO
                    ? Colors.green
                    : _finances[index].status == FinanceStatus.EM_ABERTO
                        ? Colors.yellow
                        : Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            Text(
                "${_finances[index].status == FinanceStatus.PAGO ? "Pago" : _finances[index].status == FinanceStatus.EM_ABERTO ? "Em andamento" : "Vencido"}")
          ],
        )),
        DataCell(Row(children: <Widget>[
          InkWell(
            child: Icon(Icons.reorder),
            onTap: () {
              Toast.showInfoToast("Barcode ${_finances[index].valores}");
            },
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Icon(Icons.chrome_reader_mode),
            onTap: () {
              Toast.showInfoToast("element ${_finances[index].valores}");
            },
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Icon(Icons.table_chart),
            onTap: () {
              Toast.showInfoToast("chart ${_finances[index].valores}");
            },
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Icon(Icons.email),
            onTap: () {
              Toast.showInfoToast("email ${_finances[index].valores}");
            },
          )
        ])),
      ],
    );
  }

  @override
  int get rowCount =>
      _finances?.length ?? 0; // Manipulate this to which ever value you wish

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
