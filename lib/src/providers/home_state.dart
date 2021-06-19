import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  String? title;

  void changeTitle(String? value) {
    this.title = value!;
    this.notifyListeners();
  }
}
