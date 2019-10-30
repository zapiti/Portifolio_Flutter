import 'package:flutter_web/material.dart';
import 'package:web_flutter/screens/dashboard/dashboard.dart';
import 'package:web_flutter/screens/forms/form.dart';
import 'package:web_flutter/screens/photo_detail/photo_detail_screen.dart';
import 'package:web_flutter/utils/color_constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int active = 0;
  @override
  void initState() {
    super.initState();
    tabController =  TabController(vsync: this, length: 3, initialIndex: 0)
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
      appBar:   MediaQuery.of(context).size.width < 1100 ? AppBar(
        automaticallyImplyLeading:
            MediaQuery.of(context).size.width < 1100 ? true : false,
      iconTheme: IconThemeData(color: Colors.orange),
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 32),
                child: Text(
                  "Doctor Stone",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ),
            ]),
        //actions: <Widget>[
       // SizedBox(width: 32),
       //   Container(child: Icon(Icons.account_circle)),
       //   SizedBox(width: 32),
      //    Container(
       //     child: IconButton(
       //       padding: EdgeInsets.all(0),
       //       icon: Icon(Icons.exit_to_app),
      //        onPressed: () {
      //          Navigator.pop(context);
       //       },
      //      ),
    //      ),
    //      SizedBox(width: 32),
   //     ],
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: false,
      ) : null,
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
                Dashboard(),
                FormMaterial(),
                PhotoDetailAnimation(),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(child: listDrawerItems(true))
    );
  }

  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          height: 50,
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("Senku"), Text("Nome empresa")],
                ),
              )
            ],
          ),
        ),
    
    Container(width:MediaQuery.of(context).size.width,height: 1,color: Colors.grey,)
        ,
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Financeiro",
            iconData: Icons.show_chart,
            onPressed: () {
              print(tabController.index);
              tabController.animateTo(0);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Ordem de Serviço",
            iconData: Icons.not_listed_location,
            onPressed: () {
              print(tabController.index);
              tabController.animateTo(1);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
             drawerButton(
            tabController: tabController,
            context: context,
            title: "Meus pedidos",
            iconData: Icons.settings,
            onPressed: () {
              tabController.animateTo(2);
              drawerStatus ? Navigator.pop(context) : print("");
            }),
        drawerButton(
            tabController: tabController,
            context: context,
            title: "Meus dados",
            iconData: Icons.settings,
            onPressed: () {
              tabController.animateTo(2);
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
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HelveticaNeue',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
