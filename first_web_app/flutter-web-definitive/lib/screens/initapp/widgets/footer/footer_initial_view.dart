import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/screens/initapp/widgets/footer/order/order_initial_footer.dart';

import 'order_service/order_service_initial_footer.dart';

class BottomInitialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   MediaQuery.of(context).size.width > 1000 ?
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: bottomWidget(context,1),
    ): Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: bottomWidget(context,0),
    );
  }
}

List<Widget> bottomWidget(BuildContext context,int flex){
  return <Widget>[

    Expanded(
      flex: flex,
      child:
      Container(child: OrderServiceInitialFooter(),margin: EdgeInsets.all(10),),
    ),
    Expanded(
      flex: flex,
      child:
      Container(child: OrderInitialFooter(),margin: EdgeInsets.all(10),),
    )

  ];
}

