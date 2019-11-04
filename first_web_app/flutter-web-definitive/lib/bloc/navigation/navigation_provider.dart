

import 'navigation_bloc.dart';

class NavigationProvider {
  NavigationActions currentNavigation = NavigationActions.FINANCEIRO;
  String currentTitle = "Tarefas";

  void updateNavigation(NavigationActions navigation,String title) {
    currentNavigation = navigation;
    currentTitle = title;
  }
}
