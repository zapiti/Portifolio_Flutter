import 'package:flutter/cupertino.dart';
import 'package:flutter_web_definitive/models/home/home.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final _homeInfo = BehaviorSubject<Home>();

  Observable<Home> get homeData => _homeInfo.stream;

  Sink<Home> get homeValue => _homeInfo.sink;

  getHome() {
    var value = Home(
        name: "Carlos de Oliveira Peres",
        url:
            'https://assets1.ignimgs.com/thumbs/userUploaded/2019/5/29/drstone-1559174341319.jpg',
        employers: ["Empresa1", "Empresa2", "Empresa3", "Empresa4"],
        selectedEmployer: "Empresa1");
    homeValue.add(value);
  }

  @mustCallSuper
  dispose() async {
    await _homeInfo.drain();
    await _homeInfo.close();
  }
}

final blocHome = HomeBloc();
