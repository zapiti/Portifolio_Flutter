import 'package:flutter/material.dart';

class DemoTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _DemoTableBody();
  }
}

class _DemoTableBody extends StatefulWidget {
  @override
  __DemoTableBodyState createState() => __DemoTableBodyState();
}

class __DemoTableBodyState extends State<_DemoTableBody> {

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  // A Variable to hold the length of table based on the condition of comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage

  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {

    //Obtain the data to be displayed from the Derived DataTableSource

    var dts = DTS();

    // dts.rowcount provides the actual data length, ForInstance, If we have 7 data stored in the DataTableSource Object, then we will get 12 as dts.rowCount

    var tableItemsCount = dts.rowCount;

    // PaginatedDataTable.defaultRowsPerPage provides value as 10

    var defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;

    // We are checking whether tablesItemCount is less than the defaultRowsPerPage which means we are actually checking the length of the data in DataTableSource with default PaginatedDataTable.defaultRowsPerPage i.e, 10

    var isRowCountLessDefaultRowsPerPage = tableItemsCount < defaultRowsPerPage;

    // Assigning rowsPerPage as 10 or acutal length of our data in stored in the DataTableSource Object

    _rowsPerPage =
    isRowCountLessDefaultRowsPerPage ? tableItemsCount : defaultRowsPerPage;
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child:
        Container(
          width:  MediaQuery.of(context).size.width / 1.2,

          child: Card(child:
        PaginatedDataTable(
          columnSpacing: 110,dataRowHeight: 40,
          header: Row(children: <Widget>[
           Expanded(child: Text("Financeiro"),) ,

            Container(width: 300,child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Busca",

                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0)
            ),)),
             Container(margin: EdgeInsets.only(top: 20,right: 20,left: 20),child:    DropdownButton<String>(

               value: 'Selecione um contato',
               items: <String>['Selecione um contato', 'B', 'C', 'D'].map((String value) {
                 return  DropdownMenuItem<String>(
                   value: value,
                   child:  Text(value),
                 );

               }).toList(),
               onChanged: (_) {},
             ),),

          ],),
          // comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage and then assigning it to _rowPerPage1 variable which then set using the setsState()
          onRowsPerPageChanged: isRowCountLessDefaultRowsPerPage // The source of problem!
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
          rowsPerPage:
          isRowCountLessDefaultRowsPerPage ? _rowsPerPage : _rowsPerPage1,
        )  ,),)
      ),
    );
  }
}

class DTS extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('#${index *32}')),
        DataCell(Text('1$index/10/2019')),
        DataCell(Text('R\$ ${(index *354.66).toStringAsFixed(2)}')),
        DataCell(Text('Natureza #$index')),
        DataCell(Row(children: <Widget>[Icon(Icons.account_circle),Text("Pago")],)),
        DataCell(Icon(Icons.note)),
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