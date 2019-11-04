

import 'navigation_bloc.dart';

class NavigationProvider {
  NavigationActions currentNavigation = NavigationActions.tasks;
  String currentTitle = "Tarefas";

  void updateNavigation(NavigationActions navigation,String title) {
    currentNavigation = navigation;
    currentTitle = title;
  }
}
