import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/finance/finance_bloc.dart';
import 'package:flutter_web_definitive/models/finance/finance.dart';
import 'package:flutter_web_definitive/screens/finance/widgets/finance_header_view.dart';
import 'package:flutter_web_definitive/screens/finance/widgets/finance_table_data_source.dart';

class FinancePage extends StatefulWidget {
  @override
  _FinancePageState createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;

  @override
  void initState() {
    // TODO: implement initState
    blocFinance.getFinance();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    blocFinance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 20),
            child: StreamBuilder<List<Finance>>(
                stream: blocFinance.financeData,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Finance>> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        width: 200,
                        height: 200,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.grey),
                          strokeWidth: 5,
                        ),
                      );
                    default:
                      if (snapshot.hasError)
                        return Container();
                      else
                        return PaginatedDataTable(
                            columnSpacing: 80,
                            dataRowHeight: 40,
                            header: financeHeaderView(context),
                            // comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage and then assigning it to _rowPerPage1 variable which then set using the setsState()
                            onRowsPerPageChanged:
                                false // The source of problem!
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
                            source: FinanceTableDataSource(snapshot.data),
                            //Set Value for rowsPerPage based on comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage
                            rowsPerPage: _rowsPerPage1);
                  }
                })),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.local_post_office), Text("Duvidas?")],
        ),
        SizedBox(
          height: 8,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Envie um e-mail para ",
              style: TextStyle(color: Colors.grey[400])),
          InkWell(
            child: Text("financeiro@grancoffe.com.br",
                style: TextStyle(
                    color: Colors.grey[400],
                    decoration: TextDecoration.underline)),
            onTap: () {},
          ),
        ]),
        SizedBox(
          height: 15,
        )
      ],
    ));
  }
}
