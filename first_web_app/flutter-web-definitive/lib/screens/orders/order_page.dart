import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/order/order_bloc.dart';
import 'package:flutter_web_definitive/models/order/order.dart';
import 'package:flutter_web_definitive/screens/orders/widgets/order_header_view.dart';
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
    blocOrder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(

            margin: EdgeInsets.only(
                top: 20,
                right: MediaQuery.of(context).size.width > 1300 ? 200 : 0),
            child: StreamBuilder<List<Order>>(
                stream: blocOrder.orderData,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Order>> snapshot) {
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

                          header: orderHeaderView(context),
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
                  }
                })));
  }
}
