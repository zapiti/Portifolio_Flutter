
import 'package:flutter/material.dart';
class DrawerButton extends StatelessWidget {
  const DrawerButton({
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
