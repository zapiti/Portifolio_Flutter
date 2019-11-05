import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/order/order.dart';
import 'package:rxdart/rxdart.dart';

class OrderBloc {
  final _orderInfo = BehaviorSubject<List<Order>>();

  Observable<List<Order>> get orderData => _orderInfo.stream;

  Sink<List<Order>> get orderValue => _orderInfo.sink;

  getOrders() {
    var listOrders = List<Order>();
    for (var i = 0; i < 30; i++) {
      var value = Order(
          numPedido: i,
          data: "${i}/10/2019",
          itens: i,
          total: (i * 354.335818),
          previsao: "${i}/12/2019",
          id: 1,
          status: i%2 == 0 ?  OrderStatus.APROVADO : OrderStatus.ENTREGUE,
          contrato: i%2 == 0 ? "Batata" : "Feijao");

      listOrders.add(value);
    }
    orderValue.add(listOrders);
  }

  @mustCallSuper
  dispose() async {
    await _orderInfo.drain();
    await _orderInfo.close();
  }
}

final blocOrder = OrderBloc();
