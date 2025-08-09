import 'dart:math';

import 'package:flutter/material.dart';

class DataController with ChangeNotifier {
  String _data = '0';
  String oprand = '';

  String get data => _data;

  void set(String data) {
    _data += data;
    notifyListeners();
  }

  void setOprand(String data) {
    oprand = data;
    notifyListeners();
  }

  void setEqual() {
    _data = calculate().toString();

    notifyListeners();
  }

  void clear(String data) {
    _data = '';
    notifyListeners();
  }

  double calculate() {
    List<String> list = _data.split(oprand);
    switch (oprand) {
      case '+':
        return double.parse(list[0]) + double.parse(list[1]);
      case '-':
        return double.parse(list[0]) - double.parse(list[1]);
      case '*':
        return double.parse(list[0]) * double.parse(list[1]);
      case '/':
        return double.parse(list[1]) != 0
            ? double.parse(list[0]) / double.parse(list[1])
            : 0;
        ;
      case '%':
        return double.parse(list[0]) % double.parse(list[1]);
      case '^':
        return pow(double.parse(list[0]), double.parse(list[1])).toDouble();

      default:
        return 0;
    }
  }
}
