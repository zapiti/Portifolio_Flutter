import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/screens/finance/finance_page.dart';
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
  int active = 0;
  String city = "Nome empresa1";

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
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
                    elevation: 2.0,
                    child: Container(
                        margin: EdgeInsets.all(0),
                        height: MediaQuery.of(context).size.height,
                        width: 300,
                        color: Colors.white,
                        child: listDrawerItems(false)),
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

                  //  PhotoDetailAnimation(),
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(child: listDrawerItems(true)));
  }

  Widget listDrawerItems(bool drawerStatus) {
    List<String> cities = ["Nome empresa1", "Nome empresa2", "Nome empresa3"];
    return ListView(
      children: <Widget>[
        MediaQuery.of(context).size.width > 1100
            ? Container(
                height: 50,
                child: Center(
                  child: titleWidget(),
                ),
              )
            : SizedBox(),
        MediaQuery.of(context).size.width > 1100
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 5,
                color: Colors.orange,
              )
            : SizedBox(),
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://assets1.ignimgs.com/thumbs/userUploaded/2019/5/29/drstone-1559174341319.jpg')),
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Senku da sousa sauro nunes ",
                    style: TextStyle(fontSize: 20),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  DropdownButton<String>(
                    underline: SizedBox(),
                    items: cities.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: city,
                    onChanged: (String val) {
                      setState(() {
                        city = val;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.4,
          color: Colors.grey[300],
        ),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Inicio",
            iconData: Icons.dashboard,
            onPressed: () {
              print(tabController.index);
              tabController.animateTo(0);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Financeiro",
            iconData: Icons.insert_chart,
            onPressed: () {
              print(tabController.index);
              tabController.animateTo(1);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Ordem de Serviço",
            iconData: Icons.content_paste,
            onPressed: () {
              tabController.animateTo(3);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Meus pedidos",
            iconData: Icons.add_shopping_cart,
            onPressed: () {
              tabController.animateTo(3);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Meus dados",
            iconData: Icons.settings,
            onPressed: () {
              tabController.animateTo(4);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Sair",
            iconData: Icons.exit_to_app,
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }

  Container titleWidget() {
    return Container(
      margin: EdgeInsets.only(left: 0),
      child: Text(
        "Doctor Stone",
        style: TextStyle(
          fontSize: 24,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontFamily: 'HelveticaNeue',
        ),
      ),
    );
  }
}

class drawerButton extends StatelessWidget {
  const drawerButton({
    Key key,
    @required this.tabController,
    @required this.context,
    @required this.title,
    @required this.iconData,
    @required this.onPressed,
  }) : super(key: key);

  final TabController tabController;
  final BuildContext context;
  final VoidCallback onPressed;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: tabController.index == 2 ? Colors.grey[100] : Colors.white,
      onPressed: onPressed,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 22),
          child: Row(children: [
            Icon(iconData),
            SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
