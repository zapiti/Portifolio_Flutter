import 'dart:async';

import 'navigation_provider.dart';

enum NavigationActions{FINANCEIRO,ORDEM,PEDIDOS,DADOS,EXIT}

class NavigationDrawerBloc {
  final navigationController = StreamController.broadcast();
  NavigationProvider navigationProvider = new NavigationProvider();

  Stream get getNavigation => navigationController.stream;

  void updateNavigation(NavigationActions navigation,String title) {
    navigationProvider.updateNavigation(navigation,title);
    navigationController.sink.add(navigationProvider.currentNavigation);
  }

  void dispose() {
    navigationController.close();
  }
}

final bloc = NavigationDrawerBloc();
