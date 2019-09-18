import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:native_code_flutter/model/questions.dart';
import 'package:native_code_flutter/utils.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            getchart(TypeQuestion.BARCHART),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}

Widget getchart(TypeQuestion type) {

//
//  var linechart = charts.LineChart(
//    series,
//    animate: true,
//  );
////
////
////  var piechart = charts.PieChart(
////    series,
////    animate: true,
////  );

  var chart = type == TypeQuestion.BARCHART ? _getBarChart() :
  type == TypeQuestion.PIECHART ? _getPieChart() : _getLineChart();

  return Card(
    margin: EdgeInsets.all(10),
    child: Padding(
      padding: new EdgeInsets.all(16.0),
      child: new SizedBox(
        height: 200.0,
        child:chart,
      ),
    ),
  );
}



Widget _getBarChart() {
  var data = [
    new ClicksPerYear('2016', 12, Colors.red),
    new ClicksPerYear('2017', 42, Colors.yellow),
    new ClicksPerYear('2018', 40, Colors.green),
  ];

  var series = [
    new charts.Series(
      domainFn: (ClicksPerYear clickData, _) => clickData.year,
      measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
      colorFn: (ClicksPerYear clickData, _) => clickData.color,
      id: 'Clicks',
      data: data,
    ),
  ];



 return charts.BarChart(
    series,
    animate: false,
  );
}

Widget _getLineChart() {
 return charts.LineChart(Utils.LineChartRandomData(),
      animate: false,
      customSeriesRenderers: [
        new charts.LineRendererConfig(
          // ID used to link series to this renderer.
            customRendererId: 'customArea',
            includeArea: true,
            stacked: true),
      ]
 );

}

Widget _getPieChart() {
return charts.PieChart(Utils.pieChartRandomData(),
    animate: false,
    // Configure the width of the pie slices to 60px. The remaining space in
    // the chart will be left as a hole in the center.
    //
    // [ArcLabelDecorator] will automatically position the label inside the
    // arc if the label will fit. If the label will not fit, it will draw
    // outside of the arc with a leader line. Labels can always display
    // inside or outside using [LabelPosition].
    //
    // Text style for inside / outside can be controlled independently by
    // setting [insideLabelStyleSpec] and [outsideLabelStyleSpec].
    //
    // Example configuring different styles for inside/outside:
    //       new charts.ArcLabelDecorator(
    //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
    //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
    defaultRenderer: new charts.ArcRendererConfig(
        arcWidth: 60,
        arcRendererDecorators: [new charts.ArcLabelDecorator()]));
}



