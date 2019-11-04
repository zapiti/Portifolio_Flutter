import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  // A Variable to hold the length of table based on the condition of comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage

  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {

    var dts = DTS();

    var tableItemsCount = dts.rowCount;

    var defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;

    var isRowCountLessDefaultRowsPerPage = tableItemsCount < defaultRowsPerPage;
    _rowsPerPage =
    isRowCountLessDefaultRowsPerPage ? tableItemsCount : defaultRowsPerPage;
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            margin:EdgeInsets.only(top: 20),
            child: PaginatedDataTable(
              columnSpacing: 80,
              dataRowHeight: 40,
              header: Row(
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
                            contentPadding:
                            EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0)),
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
              ),
              // comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage and then assigning it to _rowPerPage1 variable which then set using the setsState()
              onRowsPerPageChanged:
              isRowCountLessDefaultRowsPerPage // The source of problem!
                  ? null
                  : (rowCount) {
                setState(() {
                  _rowsPerPage1 = rowCount;
                });
              },
              columns: <DataColumn>[
                DataColumn(label: Text('Fatura')),
                DataColumn(label: Text('Data de vencimento')),
                DataColumn(label: Text('Valor')),
                DataColumn(label: Text('Natureza')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Ações')),
              ],
              source: dts,
              //Set Value for rowsPerPage based on comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage
              rowsPerPage: isRowCountLessDefaultRowsPerPage
                  ? _rowsPerPage
                  : _rowsPerPage1,
            )));
  }
}

class DTS extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('#${index * 32}')),
        DataCell(Text('1$index/10/2019')),
        DataCell(Text('R\$ ${(index * 354.66).toStringAsFixed(2)}')),
        DataCell(Text('Natureza #$index')),
        DataCell(Row(
          children: <Widget>[
            Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.only(right: 10),
              decoration: new BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
            Text("Pago")
          ],
        )),
        DataCell(
          Container(height: 20,width: 80,child:

          FlatButton(

              child: Text("Ver"),
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.red)
              )))    ,) ,
      ],
    );
  }

  @override
  int get rowCount => 15; // Manipulate this to which ever value you wish

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
