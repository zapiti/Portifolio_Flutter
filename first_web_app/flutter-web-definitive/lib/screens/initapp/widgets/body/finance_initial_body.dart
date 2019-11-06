import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/home/home_bloc.dart';
import 'package:flutter_web_definitive/bloc/initapp/initial_bloc.dart';
import 'package:flutter_web_definitive/models/finance/finance.dart';
import 'package:flutter_web_definitive/models/home/home.dart';

import 'generate_finance_data_rows.dart';

class FinanceInitialBody extends StatefulWidget {
  @override
  _FinanceInitialBodyState createState() => _FinanceInitialBodyState();
}

class _FinanceInitialBodyState extends State<FinanceInitialBody> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            "Títulos em atraso",
            style: TextStyle(fontSize: 22),
          ),
          margin: EdgeInsets.only(top: 20, left: 20),
        ),
        Container(
            child: StreamBuilder<List<Finance>>(
                stream: blocInitial.allFinance,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Finance>> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        width:  MediaQuery.of(context).size.width,
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
                        return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 80,
                                  dataRowHeight: 40,

                                  columns: <DataColumn>[
                                    DataColumn(label: Text('Fatura')),
                                    DataColumn(
                                        label: Text('Data de vencimento')),
                                    DataColumn(label: Text('Valor')),
                                    DataColumn(label: Text('Natureza')),
                                    DataColumn(label: Text('Status')),
                                    DataColumn(label: Text('Ações')),
                                  ],
                                  rows: generateFinanceDataRows(snapshot.data),
                                  //Set Value for rowsPerPage based on comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage
                                )));
                  }
                })),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: InkWell(
            onTap: () {
              blocHome.setPageActual(HomeSelected.FINANCE);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add,
                  size: 15,
                ),
                Text("Abrir financeiro")
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
