import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/finance/finance.dart';
import 'package:rxdart/rxdart.dart';

class FinanceBloc {
  final _financeInfo = BehaviorSubject<List<Finance>>();

  Observable<List<Finance>> get financeData => _financeInfo.stream;

  Sink<List<Finance>> get financeValue => _financeInfo.sink;

  getFinance() async {
    var listFinance = List<Finance>();
    for (var i = 0; i < 30; i++) {
      var value = Finance(
          fatura: i,
          dataVenc: "${i}/10/2019",
          valores: (i * 354.335818),
          natureza: i % 2 == 0 ? "Serviço" : "Produto",
          id: 1,
          status: i % 2 == 0 ? FinanceStatus.PAGO : FinanceStatus.EM_ABERTO,
          contrato: i % 2 == 0 ? "Batata" : "Feijao");

      listFinance.add(value);
    }
    await Future.delayed(
        Duration(seconds: 3), () => financeValue.add(listFinance));
  }

  @mustCallSuper
  dispose() async {
    await _financeInfo.drain();
    await _financeInfo.close();
  }
}

final blocFinance = FinanceBloc();
