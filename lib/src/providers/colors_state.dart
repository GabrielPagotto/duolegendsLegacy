import 'package:flutter/material.dart';

class ColorsState extends ChangeNotifier {
  late bool darkEnabled = false;

  void changeColorMode() {
    this.darkEnabled = !this.darkEnabled;
    this.notifyListeners();
  }
}
