import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/bloc/finance/finance_bloc.dart';
import 'package:flutter_web_definitive/bloc/home/home_bloc.dart';
import 'package:flutter_web_definitive/bloc/order/order_bloc.dart';
import 'package:flutter_web_definitive/bloc/order_service/order_service_bloc.dart';
import 'package:flutter_web_definitive/models/home/home.dart';
import 'package:flutter_web_definitive/screens/home/widgets/drawer_button_widget.dart';
import 'package:flutter_web_definitive/screens/home/widgets/title_widget.dart';

Widget listDrawerItems(bool drawerStatus) {
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
                        backgroundImage:
                            NetworkImage(snapshot.data?.url ?? "")),
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(width: 200,child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                    Container(
                      height: 20,
                      child:
                      Text(
                        snapshot.data?.name ?? "",
                        style: TextStyle(fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),),
                      Container(
                        height: 30,
                        child:
                      DropdownButton<String>(
                        underline: SizedBox(),
                        items: (snapshot.data?.employers ?? [])
                            .map((String value) {
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
                      ),) ,SizedBox(
                        height: 5,
                      )
                    ],
                  ),)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.4,
              color: Colors.grey[300],
            ),
            DrawerButton(
                active: snapshot.data?.selectedHome == HomeSelected.HOME,
                context: context,
                title: "Inicio",
                iconData: Icons.dashboard,
                onPressed: () {
                  clearAllBloc();
                  blocHome.setPageActual(HomeSelected.HOME);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                active: snapshot.data?.selectedHome == HomeSelected.FINANCE,
                context: context,
                title: "Financeiro",
                iconData: Icons.insert_chart,
                onPressed: () {
                  clearAllBloc();

                  blocHome.setPageActual(HomeSelected.FINANCE);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                active:
                    snapshot.data?.selectedHome == HomeSelected.ORDER_SERVICE,
                context: context,
                title: "Ordem de Serviço",
                iconData: Icons.content_paste,
                onPressed: () {
                  clearAllBloc();
                  blocHome.setPageActual(HomeSelected.ORDER_SERVICE);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                active: snapshot.data?.selectedHome == HomeSelected.ORDER,
                context: context,
                title: "Meus pedidos",
                iconData: Icons.add_shopping_cart,
                onPressed: () {
                  clearAllBloc();
                  blocHome.setPageActual(HomeSelected.ORDER);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                active: snapshot.data?.selectedHome == HomeSelected.MY_DATA,
                context: context,
                title: "Meus dados",
                iconData: Icons.settings,
                onPressed: () {
                  clearAllBloc();
                  blocHome.setPageActual(HomeSelected.MY_DATA);
                  drawerStatus ? Navigator.pop(context) : print("");
                }),
            DrawerButton(
                active: false,
                context: context,
                title: "Sair",
                iconData: Icons.exit_to_app,
                onPressed: () {
                  blocHome.dispose();
                  clearAllBloc();
                  Navigator.pop(context);
                }),
          ],
        );
      });
}

void clearAllBloc() {
  blocFinance.dispose();
  blocOrder.dispose();
  blocOrderService.dispose();
}
