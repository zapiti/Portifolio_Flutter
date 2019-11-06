import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/finance/filter_finance.dart';
import 'package:flutter_web_definitive/models/finance/finance.dart';
import 'package:rxdart/rxdart.dart';

class FinanceBloc {
  final _financeInfo = BehaviorSubject<List<Finance>>();
  final _contractFinance = BehaviorSubject<FiterFinance>();

  Observable<List<Finance>> get financeData => _financeInfo.stream;
  Sink<List<Finance>> get financeValue => _financeInfo.sink;

  Observable<FiterFinance> get allContract => _contractFinance.stream;
  Sink<FiterFinance> get contractValue => _contractFinance.sink;



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
    contractValue.add(FiterFinance(["Selecione um contato","Batata" , "Feijao"]));
    await Future.delayed(
        Duration(seconds: 3), () => financeValue.add(listFinance));
  }

  setContactSelected(String selected){
    allContract.firstWhere((finance) {
      finance.selectedContact = selected;
      contractValue.add(finance);
      return true;
    });
  }

  @mustCallSuper
  dispose() async {
    await _financeInfo.drain();
    await _financeInfo.close();
    await _contractFinance.drain();
    await _contractFinance.close();
  }
}

final blocFinance = FinanceBloc();
