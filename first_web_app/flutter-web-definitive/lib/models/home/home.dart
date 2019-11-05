enum HomeSelected { HOME, FINANCE, ORDER_SERVICE, ORDER, MY_DATA }

class Home {
  final String name;
  final String url;
  final List<String> employers;
  String selectedEmployer;
  HomeSelected selectedHome = HomeSelected.HOME;

  Home({this.name, this.url, this.employers, this.selectedEmployer});
}
