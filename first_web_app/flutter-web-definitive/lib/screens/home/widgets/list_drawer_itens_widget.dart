
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/home/home_bloc.dart';
import 'package:flutter_web_definitive/models/home/home.dart';
import 'package:flutter_web_definitive/screens/home/widgets/drawer_button_widget.dart';
import 'package:flutter_web_definitive/screens/home/widgets/title_widget.dart';

Widget listDrawerItems(bool drawerStatus,TabController tabController) {
  return StreamBuilder<Home>(
      stream: blocHome.homeData,
      builder: (BuildContext context, AsyncSnapshot<Home> snapshot) {
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

                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(snapshot.data?.url ?? "")),
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
                        snapshot.data?.name ?? "",
                        style: TextStyle(fontSize: 20),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      DropdownButton<String>(
                        underline: SizedBox(),
                        items: (snapshot.data?.employers ?? []).map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        value: snapshot.data?.selectedEmployer ?? "",
                        onChanged: (String val) {
                          snapshot.data.selectedEmployer = val;
                          blocHome.homeValue.add(snapshot.data);
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
            DrawerButton(
                tabController: tabController,
                context: context,
                title: "Inicio",
                iconData: Icons.dashboard,
                onPressed: () {
                  print(tabController.index);
                  tabController.animateTo(0);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                tabController: tabController,
                context: context,
                title: "Financeiro",
                iconData: Icons.insert_chart,
                onPressed: () {
                  print(tabController.index);
                  tabController.animateTo(1);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                tabController: tabController,
                context: context,
                title: "Ordem de Serviço",
                iconData: Icons.content_paste,
                onPressed: () {
                  tabController.animateTo(2);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                tabController: tabController,
                context: context,
                title: "Meus pedidos",
                iconData: Icons.add_shopping_cart,
                onPressed: () {
                  tabController.animateTo(3);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                tabController: tabController,
                context: context,
                title: "Meus dados",
                iconData: Icons.settings,
                onPressed: () {
                  tabController.animateTo(4);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                tabController: tabController,
                context: context,
                title: "Sair",
                iconData: Icons.exit_to_app,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        );
      });
}
