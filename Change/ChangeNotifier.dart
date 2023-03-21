// ignore: file_names
import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void tang() {
    _counter++;
    notifyListeners();
  }

  void giam() {
    _counter--;
    notifyListeners();
  }
}
