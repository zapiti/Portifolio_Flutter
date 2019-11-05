import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/order_service/order_service_bloc.dart';
import 'package:flutter_web_definitive/models/order_service/order_service.dart';
import 'package:flutter_web_definitive/screens/order_service/widgets/order_service_header_view.dart';
import 'package:flutter_web_definitive/screens/order_service/widgets/order_service_table_data_source.dart';

class OrderServicePage extends StatefulWidget {
  @override
  _OrderServicePageState createState() => _OrderServicePageState();
}

class _OrderServicePageState extends State<OrderServicePage> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  void initState() {
    blocOrderService.getOrders();
    super.initState();
  }

  @override
  void dispose() {
    blocOrderService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            margin: EdgeInsets.only(top: 20),
            child: StreamBuilder<List<OrderService>>(
                stream: blocOrderService.orderData,
                builder: (BuildContext context,
                    AsyncSnapshot<List<OrderService>> snapshot) {
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
                      else {
                        return PaginatedDataTable(
                            columnSpacing: 80,
                            dataRowHeight: 40,
                            header: orderServiceHeaderView(context),
                            // comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage and then assigning it to _rowPerPage1 variable which then set using the setsState()
                            onRowsPerPageChanged:
                                false // The source of problem!
                                    ? null
                                    : (rowCount) {
                                        setState(() {
                                          _rowsPerPage = rowCount;
                                        });
                                      },
                            columns: <DataColumn>[
                              DataColumn(label: Text('OS')),
                              DataColumn(label: Text('Data')),
                              DataColumn(label: Text('Tipo')),
                              DataColumn(label: Text('End.Planta')),
                              DataColumn(label: Text('Descrição')),
                              DataColumn(label: Text('Status')),
                              DataColumn(label: Text('Ações')),
                            ],
                            source: OrderServiceTableDataSource(snapshot.data),
                            //Set Value for rowsPerPage based on comparing the actual data length with the PaginatedDataTable.defaultRowsPerPage
                            rowsPerPage: _rowsPerPage);
                      }
                  }
                })));
  }
}
