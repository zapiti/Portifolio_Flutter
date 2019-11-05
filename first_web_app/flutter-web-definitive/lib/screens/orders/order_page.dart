import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/order/order_bloc.dart';
import 'package:flutter_web_definitive/models/order/order.dart';
import 'package:flutter_web_definitive/screens/orders/widgets/order_table_data_souce.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  void initState() {
    // TODO: implement initState
    blocOrder.getOrders();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

        child: Container(

            width: MediaQuery.of(context).size.width / 2,
            margin: EdgeInsets.only(top: 20,right: MediaQuery.of(context).size.width > 1300 ? 200 : 20 ),
            child: StreamBuilder<List<Order>>(
                stream: blocOrder.orderData,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Order>> snapshot) {
                  return PaginatedDataTable(
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
                            items: <String>[
                              'Selecione um contato',
                              'B',
                              'C',
                              'D'
                            ].map((String value) {
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
                    onRowsPerPageChanged: false // The source of problem!
                        ? null
                        : (rowCount) {
                            setState(() {
                              _rowsPerPage = rowCount;
                            });
                          },
                    columns: <DataColumn>[
                      DataColumn(label: Text('N°Pedido')),
                      DataColumn(label: Text('Data')),
                      DataColumn(label: Text('Total pedido')),
                      DataColumn(label: Text('Previsão entrega')),
                      DataColumn(label: Text('Status')),
                      DataColumn(label: Text('Ações')),
                    ],
                    source: OrderTableDataSource(snapshot.data),
                    //Set Value for rowsPerPage based on comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage
                    rowsPerPage: _rowsPerPage,
                  );
                })));
  }
}
