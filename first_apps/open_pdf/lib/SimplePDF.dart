import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:universal_html/html.dart' as html;
import 'package:open_pdf/teste/fake_ui.dart'
if (dart.library.html) 'package:open_pdf/teste/real_ui.dart' as ui;

import 'PDFScreen.dart';

class SimplePDF extends StatefulWidget {
  @override
  _SimplePDFState createState() => new _SimplePDFState();
}

class _SimplePDFState extends State<SimplePDF> {
  String pathPDF = "";
  String urlPDF = "http://192.168.1.114:3000/a.pdf";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = urlPDF;
    final filename = "sample.pdf";

    var request = await http.get(url);

    print("droga1 ");
    var bytes = request.bodyBytes;
    print("droga ");

    //abre web
    html.window
        .open("http://192.168.1.114:3000/a.pdf", "http://192.168.1.114/a.pdf");
    //abre mobile
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);

    print("droga $file ");
    OpenFile.open('$dir/$filename');

    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plugin example app')),
      body: Center(
        child: RaisedButton(
          child: Text("Open PDF"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)),
          ),
        ),
      ),
    );
  }
}
Widget loadPDF(String url) {
  try {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'pdf',
            (int viewId) => html.IFrameElement()
          ..width = '640'
          ..height = '600'
          ..src = url
          ..onPlaying
          ..title = 'teste teste teste'
          ..style.border = 'none');
    return HtmlElementView(viewType: 'pdf');
  } catch (e) {
    print(e);
    return null;
  }
}