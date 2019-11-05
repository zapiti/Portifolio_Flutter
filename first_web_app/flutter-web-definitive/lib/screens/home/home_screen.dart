import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/home/home_bloc.dart';
import 'package:flutter_web_definitive/screens/finance/finance_page.dart';
import 'package:flutter_web_definitive/screens/home/widgets/list_drawer_itens_widget.dart';
import 'package:flutter_web_definitive/screens/home/widgets/title_widget.dart';
import 'package:flutter_web_definitive/screens/initapp/init_page.dart';
import 'package:flutter_web_definitive/screens/my_data/my_data_page.dart';
import 'package:flutter_web_definitive/screens/order_service/order_service_page.dart';
import 'package:flutter_web_definitive/screens/orders/order_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}
class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5, initialIndex: 0);
    blocHome.getHome();
//      ..addListener(() {
//        setState(() {
//         // active = tabController.index;
//        });
//      });
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MediaQuery.of(context).size.width < 1100
            ? AppBar(
                automaticallyImplyLeading:
                    MediaQuery.of(context).size.width < 1100 ? true : false,
                iconTheme: IconThemeData(color: Colors.orange),
                title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      titleWidget(),
                    ]),
                backgroundColor: Colors.white,
              )
            : null,
        body: Row(
          children: <Widget>[
            MediaQuery.of(context).size.width < 1100
                ? Container()
                : Card(
                    child: Container(
                        margin: EdgeInsets.all(0),
                        height: MediaQuery.of(context).size.height,
                        width: 300,
                        color: Colors.white,
                        child: listDrawerItems(false, tabController)),
                  ),
            Container(
              width: MediaQuery.of(context).size.width < 1100
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width - 310,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  InitPage(),
                  FinancePage(),
                  OrderServicePage(),
                  OrderPage(),
                  MyDataPage(),
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(child: listDrawerItems(true, tabController)));
  }
}
