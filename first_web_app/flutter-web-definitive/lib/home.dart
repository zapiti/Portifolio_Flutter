
import 'dart:html';

import 'package:flutter/cupertino.dart';
//import 'package:flutter_map/flutter_map.dart' as map;
import 'package:flutter/material.dart';

import 'dart:ui' as ui;

import 'package:google_maps/google_maps.dart' as google;




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



    final mapOptions = new google.MapOptions()
      ..center = new google.LatLng(51.5, -0.09)
      ..zoom = 16;
// ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('hello-world-html', (int viewId) {
      final elem = DivElement()
        ..id = 'hello-world-html'
        ..style.width = '300'
        ..style.height = '300'
        ..style.border = 'none';

      final mapComponent = new google.GMap(elem, mapOptions);

      return elem;
    });

    super.initState();
    // We use 3600 milliseconds instead of 1800 milliseconds because 0.0 -> 1.0
    // represents an entire turn of the square whereas in the other examples
    // we used 0.0 -> math.pi, which is only half a turn.
  }

  @override
  Widget build(BuildContext context) {
    print("banana");
    return   HtmlElementView(viewType: 'hello-world-html');
  }

  @override
  void dispose() {
    super.dispose();
  }
//   Widget testesWiget(){
//   return map.FlutterMap(
//      options:  map.MapOptions(
//        center:  LatLng(51.5, -0.09),
//        zoom: 13.0,
//      ),
//      layers: [
//        new map.TileLayerOptions(
//          urlTemplate: "https://api.tiles.mapbox.com/v4/"
//              "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
//          additionalOptions: {
//            'accessToken': 'pk.eyJ1Ijoic2Fua2h5YWNvZGUiLCJhIjoiY2swZ3QzcTV0MGI5MjNtcm5samw5cXZyeSJ9.NgNFWMl-r8Q-qSEve6GMew',
//            'id': 'mapbox.streets',
//          },
//        ),
//        new map.MarkerLayerOptions(
//          markers: [
//             map.Marker(
//              width: 80.0,
//              height: 80.0,
//              point: LatLng(51.5, -0.09),
//              builder: (ctx) =>
//              new Container(
//                child: Container(width: 40,height: 40, color: Colors.black,),
//              ),
//            ),
//          ],
//        ),
//      ],
//    );
// }
}
