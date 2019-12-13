import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Developed by  flutter team : widget  WebView


class MyPlaceholderWidget extends StatelessWidget {

  var url = 'http://192.168.1.114:3000/a.pdf'  ;
  final key = UniqueKey();



  @override
  Widget build(BuildContext context) {

    return WebView(
        key: key,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: url,
        onWebViewCreated: (WebViewController webViewController){
        });



  }
}