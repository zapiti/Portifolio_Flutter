import 'dart:html';
import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:flutter_web/material.dart';

void main() {
  runApp(new Center(child: new Directionality( textDirection: TextDirection.ltr,child:HtmlExample())));
}

class HtmlExample extends StatefulWidget {
  @override
  _HtmlExampleState createState() => new _HtmlExampleState();
}

class _HtmlExampleState extends State<HtmlExample> {
int count;
  @override
  void initState() {
    count = 0;

//rootBundle.l('map.html').then(value)

    ui.platformViewRegistry.registerViewFactory(
        'hello-world-html',
            (int viewId) => IFrameElement()
          ..width = '640'
          ..height = '360'
          ..src = 'https://www.google.com'
          ..style.border = 'none');
    super.initState();
    // We use 3600 milliseconds instead of 1800 milliseconds because 0.0 -> 1.0
    // represents an entire turn of the square whereas in the other examples
    // we used 0.0 -> math.pi, which is only half a turn.
  }

  @override
  Widget build(BuildContext context) {
    print("banana");
    return HtmlElementView(viewType: 'hello-world-html');
  }

  @override
  void dispose() {
    super.dispose();
  }
}