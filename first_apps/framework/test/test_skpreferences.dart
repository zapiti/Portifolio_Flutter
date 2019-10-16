// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:framework/content/skpreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  // set initial values here if desired
  test('skpreferences smoke test', () async {
    //teste boolean
    SharedPreferences.setMockInitialValues({});
    dynamic valueSet = false;
    dynamic teste;

    await SKPreferences.set(key: "teste_boolean", value: valueSet);
    teste = await SKPreferences.getBoolean(key: "teste_boolean");
    expect(valueSet, teste);

    //teste string
    valueSet = "Ola mundo";
    await SKPreferences.set(key: "teste_string", value: valueSet);
    teste = await SKPreferences.getString(key: "teste_string");
    expect(valueSet, teste);

    //teste double
    valueSet = 489898.0.toDouble();
    await SKPreferences.set(key: "teste_double", value: valueSet);
    teste = await SKPreferences.getDouble(key: "teste_double");
    expect(valueSet, teste);

    //teste int
    valueSet = 5588;
    await SKPreferences.set(key: "teste_int", value: valueSet);
    teste = await SKPreferences.getInt(key: "teste_int");
    expect(valueSet, teste);

    //teste arrayString
    var valueSetList = List<String>();
    valueSetList.add("0");
    valueSetList.add("1");
    valueSetList.add("2");
    valueSetList.add("3");

    await SKPreferences.set(key: "teste_array", value: valueSetList);
    teste = await SKPreferences.getStringArray(key: "teste_array");
    expect(valueSetList, teste);
  });
}
