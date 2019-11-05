import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/order_service/order_service.dart';
import 'package:rxdart/rxdart.dart';

class OrderServiceBloc {
  final _orderInfo = BehaviorSubject<List<OrderService>>();

  Observable<List<OrderService>> get orderData => _orderInfo.stream;

  Sink<List<OrderService>> get orderValue => _orderInfo.sink;

  getOrders() async {
    var listOrders = List<OrderService>();
    for (var i = 0; i < 30; i++) {
      var value = OrderService(
          os: i,
          data: "${i}/10/2019",
          tipo: i % 2 == 0 ? "Tecnico" : "Sugest./Reclam",
          endereco: i % 2 == 0
              ? "Rua jose Manuel filho"
              : "Rua franscisco de assins 15165 sao jose dos campos",
          descricao: i % 2 == 0
              ? "Por falta de pagamento o dragao matou o rato de agua"
              : "Era uma vez um jogo chamado jogo do trono",
          id: 1,
          status: i % 2 == 0
              ? OrderServiceStatus.CONCLUIDO
              : OrderServiceStatus.PENDENTE,
          contrato: i % 2 == 0 ? "Batata" : "Feijao");

      listOrders.add(value);
    }

    await Future.delayed(
        Duration(seconds: 3), () => orderValue.add(listOrders));
  }

  @mustCallSuper
  dispose() async {
    await _orderInfo.drain();
    await _orderInfo.close();
  }
}

final blocOrderService = OrderServiceBloc();
