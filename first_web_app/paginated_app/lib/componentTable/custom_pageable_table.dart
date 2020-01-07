import 'package:flutter/material.dart';

Widget customPageableTable(
    {Widget headerView,
    @required List<Widget> columnsView,
    @required List rownsView,
    @required isLoad,
    Widget footerView,
    int qtdMaxPage,
    int selectedPage,
    ValueChanged<int> selectionPage}) {
  var list = positiveIntegers
      .skip(1) // don't use 0
      .take(qtdMaxPage) // take 10 numbers
      .toList();

  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Center(
                child: Column(
              children: <Widget>[
                headerView != null ? headerView : SizedBox(),
                Row(
                  children: rownsView.map((row) {
                    return Expanded(child: row);
                  }).toList(),
                ),
                isLoad
                    ? Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                        height: 400,
                        width: double.infinity,
                      )
                    : Column(
                        children: columnsView.map((views) {
                          return views;
                        }).toList(),
                      ),
                footerView != null ? footerView : SizedBox(),
              ],
            )),
          ),
        ),
        Container(
          height: 100,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: list
                  .asMap()
                  .map((i, number) => MapEntry(
                      i,

                      InkWell(   customBorder: CircleBorder(),

                        child: i == 0 ||
                                i == list.length - 1 ||
                                (selectedPage + 2 >= i) &&
                                    (selectedPage - 2 <= i)
                            ? Container(
                                width: 40.0,
                                height: 40.0,

                                decoration: BoxDecoration(
                                  boxShadow: [
                                  BoxShadow(
                                    color:   selectedPage == i ?  Colors.grey.withOpacity(0.8) :Colors.transparent,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],

                                  shape: BoxShape.circle,
                                  // You can use like this way or like the below line
//borderRadius: new BorderRadius.circular(30.0),
                                  color: selectedPage == i
                                      ? Colors.green
                                      : Colors.transparent,
                                ),
                                child: Center(
                                    child: Text(number.toString(),
                                        style: TextStyle(fontSize: 16))))
                            : (selectedPage + 3 >= i) && (selectedPage - 3 <= i)
                                ? Container(
                                    child: Text("..."),
                                  )
                                : SizedBox(),
                        onTap: () {
                          selectionPage(i);
                        },
                      )))
                  .values
                  .toList()),
        )
      ],
    ),
  );
}

Iterable<int> get positiveIntegers sync* {
  int i = 0;
  while (true) yield i++;
}
