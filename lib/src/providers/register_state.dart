import 'package:flutter/material.dart';

class RegisterState extends ChangeNotifier {
  late String? username = '';
  late String? name = '';
  late String? lastName = '';
  late String? email = '';
  late String? password = '';

  void changeUsername(String? value) => this.username = value;

  void changeName(String? value) => this.name = value;

  void changeLastName(String? value) => this.lastName = value;

  void changeEmail(String? value) => this.email = value;

  void changePassword(String? value) => this.password = value;
}
