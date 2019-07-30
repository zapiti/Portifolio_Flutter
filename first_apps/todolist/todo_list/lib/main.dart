import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _toDoList = [];

  final _toDoController = TextEditingController();

  Map<String, dynamic> _lastRemoved = Map();
  int _lastRemovedPos;

  void _addToDo() {
    setState(() {
      Map<String, dynamic> newToDo = Map();

      newToDo["title"] = _toDoController.text;

      newToDo["ok"] = false;

      _toDoList.add(newToDo);

      _saveData();
    });
  }

  @override
  void initState() {
    super.initState();

    _readData().then((data) {
      setState(() {
        _toDoList = jsonDecode(data);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de tarefas"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(17, 1, 7, 1),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Nova tarefa",
                        labelStyle: TextStyle(color: Colors.cyan)),
                    controller: _toDoController,
                  ),
                ),
                RaisedButton(
                  color: Colors.cyan,
                  child: Text("ADD"),
                  textColor: Colors.white,
                  onPressed: _addToDo,
                )
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    itemCount: _toDoList.length,
                    itemBuilder: buildItem),
                onRefresh: _refresh),
          ),
        ]));
  }

  Future<Null> _refresh() async {
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      _toDoList.sort((first, second) {
        if (first["ok"] && !second["ok"])
          return 1;
        else if (!first["ok"] && second["ok"])
          return -1;
        else
          return 0;
      });

      _saveData();
    });
  }

  Widget buildItem(context, index) {
    var isChecked = _toDoList[index]["ok"];
    var title = _toDoList[index]["title"];

    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(-0.9, 0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      direction: DismissDirection.startToEnd,
      child: CheckboxListTile(
        title: Text(title),
        value: isChecked,
        secondary: CircleAvatar(
          child: Icon(isChecked ? Icons.check : Icons.error),
        ),
        onChanged: (check) {
          setState(() {
            _toDoList[index]["ok"] = check;
            _saveData();
          });
        },
      ),
      onDismissed: (direction) {
        setState(() {
          _lastRemoved = Map.from(_toDoList[index]);
          _lastRemovedPos = index;
          _toDoList.removeAt(index);

          _saveData();

          final snack = SnackBar(
            content: Text("Tarefa ${_lastRemoved["title"]} removida!"),
            action: SnackBarAction(
                label: "Desfazer",
                onPressed: () {
                  setState(() {
                    _toDoList.insert(_lastRemovedPos, _lastRemoved);
                    _saveData();
                  });
                }),
            duration: Duration(seconds: 2),
          );
          Scaffold.of(context).removeCurrentSnackBar();
          Scaffold.of(context).showSnackBar(snack);
        });
      },
    );
  }

  Future<File> _getFIle() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveData() async {
    String data = json.encode(_toDoList);
    final file = await _getFIle();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFIle();
      return file.readAsStringSync();
    } catch (e) {
      return null;
    }
  }
}
