import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolegends/src/providers/colors_state.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int counter = 0;

  @override
  Widget build(BuildContext context) {
    final ColorsState colorsState = context.watch<ColorsState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('duolegends'),
      ),
      body: Column(
        children: [
          Text('Olá mundo'),
          Text('Seu contador é $counter'),
          SizedBox(height: 50),
          TextButton(onPressed: () => colorsState.changeColorMode(), child: Text('Aumentar contador')),
        ],
      ),
    );
  }
}
