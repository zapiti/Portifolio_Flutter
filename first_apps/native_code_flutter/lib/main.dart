import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_text_to_speech/flutter_text_to_speech.dart';

import 'package:native_code_flutter/component/youtube_example.dart';
import 'package:native_code_flutter/speech_recognition.dart';
import 'package:native_code_flutter/utils.dart';
import 'package:permission_handler/permission_handler.dart';

import 'component/ballon_view.dart';
import 'component/chart_example.dart';
import 'model/questions.dart';

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
      //     MyHomePage(title: 'Flutter Demo Home Page')
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
  String resultText = "";
  bool _enableButton = false;
  bool _tempChart = true;
  bool _openKeeBoard = false;
  final _resultController = TextEditingController();
  bool enableMicKeyBoard = true;
  VoiceController controller = FlutterTextToSpeech.instance.voiceController();

  List<Questions> _chatElement = [];
  List<Questions> _shipElement = [];
  ScrollController _scrollController = new ScrollController();

  _speak(String text)  {

    controller.init().then((_) {
      controller.speak(
          text);
    });
  }

  @override
  void initState() {
    super.initState();
    element();
    initSpeechRecognizer();
    initTextElement();

    initShip();
  }

  void initShip() {
    List<Questions> listElement = [];
    listElement.add(
        Questions(type: TypeQuestion.BIA, menssagem: "O que você pode fazer?"));
    listElement.add(
        Questions(type: TypeQuestion.BIA, menssagem: "Perguntas treinadas"));
    listElement.add(
        Questions(type: TypeQuestion.BIA, menssagem: "Treinar nova pergunta"));
    listElement.add(
        Questions(type: TypeQuestion.BIA, menssagem: "Me fale sobre você"));

    _addSuggestionShip(listElement);
  }

  Future element() async {
    PermissionStatus mic = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.microphone);
    print('microphone permission? ${mic.toString()}');
    try {
      if (mic != PermissionStatus.granted) {
        await PermissionHandler()
            .requestPermissions([PermissionGroup.microphone]);
      }
    } catch (e) {
      print(e);
    }
  }

  void initTextElement() {
    _resultController.addListener(_onTextChanged);
  }

  void initSpeechRecognizer() {
    _speechRecognition = SpeechRecognition();

    _speechRecognition.setAvailabilityHandler(
        (bool result) => setState(() => _isAvailable = result));

    _speechRecognition.setRecognitionStartedHandler(
      () => setState(() {
        _isListening = true;
        _enableButton = true;
      }),
    );

    _speechRecognition.setRecognitionResultHandler(
      (String speech) => setState(() {
        resultText = speech;
      }),
    );
//    _speechRecognition.setCurrentLocaleHandler((String locale) =>
//        setState(() => _currentLocale = locale));

    _speechRecognition.setRecognitionCompleteHandler(
      (String speech) => setState(() {
        _isListening = true;
        _finishSpeech();
      }),
    );

    _speechRecognition
        .activate()
        .then((result) => setState(() => _isAvailable = result));

    if (!_isAvailable) {
      PermissionHandler().requestPermissions([
        PermissionGroup.microphone,
      ]).then((permissions) {
        print(permissions[PermissionGroup.microphone]);
        print(permissions[PermissionGroup.speech]);
      });
    }
  }

  void _onTextChanged() {
    if (_resultController.text.isEmpty) {
      setState(() {
        enableMicKeyBoard = true;
      });
    } else {
      if (_resultController.text.length == 1) {
        setState(() {
          enableMicKeyBoard = false;
        });
      }
    }
  }

  void _finishSpeech() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      _stopSpeech();
    });
  }

  void _stopSpeech() {
    if (_isListening) {
      _enableButton = false;

      _addSimpleQuest(resultText);

      print("=====FINISH::::${resultText}");
      _speechRecognition.cancel().then((result) => setState(() {
            _isListening = result;
            resultText = "";
          }));
      resultText = "";
      _isListening = false;
    }
    _isListening = false;
  }

  void _addSimpleQuest(String menssagem) {
    if (menssagem.isNotEmpty) {
      setState(() {
        _chatElement.add(
            Questions(type: TypeQuestion.MYQUESTION, menssagem: menssagem));
        _shipElement.clear();
        _loadView();
      });
    }
  }

  void _loadView() {
    _addSimpleQuestion();

    if (_tempChart) {
      _scrollToBottom();
      _addPieChart();
      _scrollToBottom();
      _addBarChart();
      _scrollToBottom();
      _addLineChart();
      _scrollToBottom();
      _addYoutube();
      _scrollToBottom();
    }
  }

  void _addSimpleQuestion() {
    var question = Questions(type: TypeQuestion.LOAD);
    _chatElement.add(question);

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _chatElement.removeLast();
        var bia =
            Questions(type: TypeQuestion.BIA, menssagem: Utils.randomBia());
        _chatElement.add(bia);

        _speak(bia.menssagem);

        if (_chatElement.length % 2 == 0) {
          initShip();
        }
      });
    });
  }

  void _addYoutube() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _chatElement.add(Questions(type: TypeQuestion.YOUTUBE));
      });
    });
  }


  void _addPieChart() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _chatElement.add(Questions(type: TypeQuestion.PIECHART));
      });
    });
  }

  void _addBarChart() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _chatElement.add(Questions(type: TypeQuestion.BARCHART));
      });
    });
  }

  void _addLineChart() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _chatElement.add(Questions(type: TypeQuestion.LINECHART));
      });
    });
  }

  void _addSuggestionShip(List<Questions> questions) {
    for (var question in questions) {
      setState(() {
        _shipElement.add(question);
      });
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        Timer(
            Duration(milliseconds: 100),
            () => _scrollController
                .jumpTo(_scrollController.position.maxScrollExtent + 1));
      });
    });
    //  var scrollPosition = _scrollController.position;

    // if (scrollPosition.viewportDimension < scrollPosition.maxScrollExtent) {
//      _scrollController.animateTo(
//        _scrollController.initialScrollOffset,
//        duration: new Duration(milliseconds: 1000),
//        curve: Curves.easeOut,

    // }
  }

  void _startSpeech() {
    if (!_isListening)
      _speechRecognition
          .listen(locale: "pt_BR")
          .then((result) => print("result::$result"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Builder(
      builder: (context) => Container(
        padding: EdgeInsets.only(bottom: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    controller: _scrollController,
                    padding: EdgeInsets.only(top: 50),
                    itemCount: _chatElement.length,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      switch (_chatElement[Index].type) {
                        case TypeQuestion.BIA:
                        case TypeQuestion.MYQUESTION:
                          return Bubble(
                            message: _chatElement[Index].menssagem,
                            isMe: _chatElement[Index].type ==
                                TypeQuestion.MYQUESTION,
                          );
                        case TypeQuestion.LOAD:
                          return Bubble(
                            message: "........",
                            isMe: false,
                          );
                        case TypeQuestion.LINECHART:
                        case TypeQuestion.BARCHART:
                        case TypeQuestion.PIECHART:
                          return getchart(_chatElement[Index].type);

                        case TypeQuestion.YOUTUBE:
                          return YoutubeView.getYoutube();

                        default:
                          return null;
                      }
                    })),
            Divider(
                color: resultText.isEmpty && _shipElement.isEmpty
                    ? Colors.transparent
                    : Theme.of(context).dividerColor,
                height: 1),
            resultText.isNotEmpty
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Text(
                      resultText,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : _shipElement.isEmpty
                    ? Divider(height: 1)
                    : Container(
                        height: 40.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _shipElement.length,
                            itemBuilder: (BuildContext ctxt, int Index) {
                              switch (_shipElement[Index].type) {
                                case TypeQuestion.BIA:
                                case TypeQuestion.MYQUESTION:
                                  return GestureDetector(
                                    child: SimpleBubble(
                                        message: _shipElement[Index].menssagem),
                                    onTap: () {
                                      _addSimpleQuest(
                                          _shipElement[Index].menssagem);
                                    },
                                  );
                                default:
                                  return null;
                              }
                            })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _openKeeBoard
                  ? <Widget>[
                      Expanded(
                        child: Padding(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Digite uma mensagem',
                                labelStyle: TextStyle(fontSize: 16)),
                            controller: _resultController,
                          ),
                          padding: EdgeInsets.only(
                            right: 12,
                            left: 12,
                            top: 12.0,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0, right: 12),
                          child: GestureDetector(
                            child: Icon(
                                enableMicKeyBoard ? Icons.mic : Icons.send),
                            onTap: () {
                              setState(() {
                                if (enableMicKeyBoard) {
                                  _startSpeech();
                                  _openKeeBoard = false;
                                } else {
                                  _addSimpleQuest(_resultController.text);
                                  _openKeeBoard = false;
                                }
                              });
                            },
                          ))
                    ]
                  : <Widget>[
                      Visibility(
                          child: Padding(
                              padding: EdgeInsets.only(top: 12.0, left: 12),
                              child: GestureDetector(
                                child: Icon(Icons.keyboard),
                                onTap: () {
                                  setState(() {
                                    _openKeeBoard = true;
                                  });
                                },
                              )),
                          visible: !_enableButton),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: GestureDetector(
                            child: _enableButton
                                ? Icon(
                                    Icons.mic,
                                    color: Colors.green,
                                  )
                                : Icon(Icons.mic_off),
                            onTap: () {
                              if (!_isListening) {
                                _startSpeech();
                              } else {
                                _stopSpeech();
                              }
                            },
                          )),
                      Visibility(
                        child: Padding(
                            padding: EdgeInsets.only(top: 12.0, right: 12),
                            child: GestureDetector(
                              child: Icon(Icons.menu),
                              onTap: () {
                                setState(() {
                                  _tempChart = !_tempChart;
                                  final snackBar = SnackBar(
                                      content: Text(_tempChart
                                          ? 'graficos habilitados'
                                          : 'graficos desabilitado'));
                                  Scaffold.of(context).showSnackBar(snackBar);
                                });
                              },
                            )),
                        visible: !_enableButton,
                      )
                    ],
            )
          ],
        ),
      ),
    )); //Scaffold
  }
}
