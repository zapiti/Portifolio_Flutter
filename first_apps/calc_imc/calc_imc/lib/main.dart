import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();

  String _infoText = "Informa seus dados";

  void _resetFields() {
    setState(() {
      weightController.clear();
      heightController.clear();
      _infoText = "Informa seus dados";
    });
  }

  void _calculate() {
    setState(() {
      _imcStateValue();
    });
  }

  void _imcStateValue() {
     double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18) {
      _infoText = "Abaixo do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc < 18) {
      _infoText = "Abaixo do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      _infoText = "Peso ideal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 24.9 && imc < 29.9) {
      _infoText = "Levemente Acima do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 29.9 && imc < 34.9) {
      _infoText = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 34.9 && imc < 39.9) {
      _infoText = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
    } else if (imc > 40) {
      _infoText = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de IMC"),
          backgroundColor: Colors.deepOrange,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: _resetFields)
          ],
        ),
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Icon(
                      Icons.person_outline,
                      size: 120,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Peso (kg)",
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.deepOrange)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.deepOrange),
                        controller: weightController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira seu Peso!";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "Altura (cm)",
                                border: OutlineInputBorder(),
                                labelStyle:
                                    TextStyle(color: Colors.deepOrange)),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.deepOrange),
                            controller: heightController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Insira seu Altura!";
                              }
                              return null;
                            })),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _calculate();
                          }
                        },
                        child: Text(
                          "Calcular",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      _infoText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.deepOrange, fontSize: 18),
                    )
                  ],
                ))));
  }
}
