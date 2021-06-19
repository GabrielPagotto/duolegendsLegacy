import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:duolegends/src/providers/colors_state.dart';
import 'routes.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool darkEnabled = context.watch<ColorsState>().darkEnabled;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/saudations',
      onGenerateRoute: (settings) => Routes.generateRoutes(settings),
      theme: LightTheme.apply(),
      darkTheme: DarkTheme.apply(),
      themeMode: darkEnabled ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
