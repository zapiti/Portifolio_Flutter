


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/models/user.dart';
import 'package:flutter_web_definitive/utils/color_constants.dart';

class FormMaterial extends StatefulWidget {
  @override
  _FormMaterialState createState() => _FormMaterialState();
}

class _FormMaterialState extends State<FormMaterial> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 2,
        margin: EdgeInsets.fromLTRB(64, 32, 64, 64),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Builder(
                  builder: (context) => Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                              ),
                              decoration: InputDecoration(
                                labelText: 'Nome',
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'HelveticaNeue',
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Porfavor escreva um nome';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.firstName = val),
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Sobrenome',
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Por favor escreva um sobrenome';
                                  }
                                },
                                onSaved: (val) =>
                                    setState(() => _user.lastName = val)),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                              child: Text(
                                'Motivos',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'HelveticaNeue',
                                ),
                              ),
                            ),
                            SwitchListTile(
                                title: const Text(
                                  'Minhas solicitações não foram atendidas',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.monthlyNewsletter,
                                onChanged: (bool val) => setState(
                                    () => _user.monthlyNewsletter = val)),
                            SwitchListTile(
                                title: const Text(
                                  'Não recebi o produto designado',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.yearlyNewsletter,
                                onChanged: (bool val) => setState(
                                    () => _user.yearlyNewsletter = val)),
                            SwitchListTile(
                                title: const Text(
                                  'Estou insatisfeito com o produto',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.weeklyNewsletter,
                                onChanged: (bool val) => setState(
                                    () => _user.weeklyNewsletter = val)),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                              child: Text(
                                'Favoritos',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'HelveticaNeue',
                                ),
                              ),
                            ),
                            CheckboxListTile(
                                title: const Text(
                                  'Filmes',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.passions[User.PassionWriting],
                                onChanged: (val) {
                                  setState(() => _user
                                      .passions[User.PassionWriting] = val);
                                }),
                            CheckboxListTile(
                                title: const Text(
                                  'Series',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.passions[User.PassionSinging],
                                onChanged: (val) {
                                  setState(() => _user
                                      .passions[User.PassionSinging] = val);
                                }),
                            CheckboxListTile(
                                title: const Text(
                                  'Animes',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.passions[User.PassionTraveling],
                                onChanged: (val) {
                                  setState(() => _user
                                      .passions[User.PassionTraveling] = val);
                                }),
                            CheckboxListTile(
                                title: const Text(
                                  'Desenhos',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                                value: _user.passions[User.PassionCooking],
                                onChanged: (val) {
                                  setState(() => _user
                                      .passions[User.PassionCooking] = val);
                                }),
                            Container(
                                height: 80,
                                // margin: EdgeInsets.only(left: 200, right: 200),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),
                                child: RaisedButton(
                                    color: ColorConstants.orange,
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        _formKey.currentState.save();
                                        _user.save();
                                        _showDialog(context);
                                        print(_user);
                                        print(_user.firstName);
                                      }
                                    },
                                    child: Text(
                                      'Salvar',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HelveticaNeue',
                                      ),
                                    ))),
                          ])))),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}
