import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_web/bloc/navigation/navigation_bloc.dart';
import 'package:flutter_bloc_web/bloc/theme/app_theme.dart';

import '../task_page.dart';


class HomeNavDrawer extends StatefulWidget {
  static String tag = 'MainNavDrawer';
  @override
  _HomeNavDrawerState createState() => _HomeNavDrawerState();
}

class _HomeNavDrawerState extends State<HomeNavDrawer> {
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: StreamBuilder(
          stream: bloc.getNavigation,
          initialData: bloc.navigationProvider.currentTitle,
          builder: (context, snapshot) {
            return   Text(bloc.navigationProvider.currentTitle);
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              accountName: Text("Senku ishigami"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i0.wp.com/www.alternativanerd.com.br/wp-content/uploads/2019/07/dr-stone-anime-nova-imagem-data-estreia.jpg?resize=850%2C450&ssl=1")),
              accountEmail: Text("senku@gmail.com"),
              otherAccountsPictures: <Widget>[
                InkWell(
                  customBorder: CircleBorder(),
                  onTap: () {
                    print("batada");
                  },
                  child: Container(
                    width: 60.0,
                    height: 60,
                    child: Icon(Icons.notifications),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.event_note),
              title: Text("Tarefas"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation(NavigationActions.tasks, "Tarefas");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              onTap: () {
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
//                        builder: (BuildContext context) => new LoginScreen()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.transfer_within_a_station),
            //   title: Text("Page Two"),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     bloc.updateNavigation("PageTwo");
            //   },
            // ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: bloc.getNavigation,
        initialData: bloc.navigationProvider.currentNavigation,
        builder: (context, snapshot) {
          if (bloc.navigationProvider.currentNavigation ==
              NavigationActions.tasks) {
            return TaskPage();
          }
          if (bloc.navigationProvider.currentNavigation ==
              NavigationActions.exit) {
            return TaskPage();
          }
          return null;
        }, // access the data in our Stream here
      ),
    );
  }
}
