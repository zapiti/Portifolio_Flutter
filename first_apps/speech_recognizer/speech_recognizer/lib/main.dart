import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:speech_recognition/speech_recognition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech Recognition App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: VoiceHome(),
    ); //Material App
  } //Build Method
}

class VoiceHome extends StatefulWidget {
  @override
  _VoiceHomeState createState() => _VoiceHomeState();
}

class _VoiceHomeState extends State<VoiceHome> {
  SpeechRecognition _speechRecognition;
  bool _isAvailable = false;
  bool _isListening = false;
  FlutterTts flutterTts = new FlutterTts();
  String resultText = "";
  static const platform = const MethodChannel('buildflutter.com/platform');
  int _counter = 0;
  speak(String text) async {
    await flutterTts.speak(text);
  }

  @override
  void initState() {
    super.initState();

    initSpeechRecognizer();

    Future<Null> _callNativeMethod() async {
      int result = 0;
      try {
        result = await platform.invokeMethod('getResult');


      } on PlatformException catch (e) {
        result = 0;
      }
      print(result);
      setState(() {
        _counter = result;
      });
    }
    _callNativeMethod();
  }


  void initSpeechRecognizer() {

    _speechRecognition = SpeechRecognition();


    _speechRecognition.setAvailabilityHandler(
        (bool result) => setState(() => _isAvailable = result));

    _speechRecognition.setRecognitionStartedHandler(
      () => setState(() => _isListening = true),
    );

    _speechRecognition.setRecognitionResultHandler(
      (String speech) => setState(() => resultText = speech),
    );


    _speechRecognition.setRecognitionCompleteHandler(
      () => setState(() => _isListening = false),
    );

    _speechRecognition
        .activate()
        .then((result) => setState(() => _isAvailable = result));

    if (!_isAvailable) {
      PermissionHandler().requestPermissions([
        PermissionGroup.microphone,
      ]).then((permissions) {
        print(permissions[PermissionGroup.microphone]);
        print(permissions[
            PermissionGroup.speech]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.white70,
        body: Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Text(
                  resultText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      mini: true,
                      child: Icon(Icons.cancel),
                      onPressed: () {
                        if (_isListening) {
                          _speechRecognition
                              .cancel()
                              .then((result) => setState(() {
                                    _isListening = result;
                                    resultText = "";
                                  }));
                        }
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        child: Icon(Icons.mic),
                        onPressed: () {
                          if (_isAvailable && !_isListening)
                            _speechRecognition
                                .listen(locale: "pt_BR")
                                .then((result) => print("$result"));
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        mini: true,
                        child: Icon(Icons.phone_in_talk),
                        onPressed: () {
                          setState(() {
                            speak(resultText);
                          });

//                          if (_isListening) {
//                            _speechRecognition.stop().then((result) =>
//                                setState(() => _isListening = result));
//                          }
                        },
                      )),
                ],
              )
            ],
          ),
        ),
      ), //Container
    ); //Scaffold
  }
}
