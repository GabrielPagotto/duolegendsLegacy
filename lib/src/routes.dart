import 'package:flutter/material.dart';
import 'screens/saudations.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';
import 'screens/register.dart';

class Routes {
  static generateRoutes(settings) {
    switch (settings.name) {
      case '/saudations':
        return MaterialPageRoute(builder: (context) => Saudations());
      case '/home':
        return MaterialPageRoute(builder: (context) => Home());
      case '/register':
        return MaterialPageRoute(builder: (context) => Register());
      case '/login':
        return MaterialPageRoute(builder: (context) => Login());
      default:
    }
  }
}
