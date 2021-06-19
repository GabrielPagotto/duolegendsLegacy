import 'package:flutter/material.dart';
import 'package:duolegends/src/components/app_body_component.dart';
import 'package:duolegends/src/components/top_bar_component.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBodyComponent(
        topBar: TopBarComponent(
          hasBackButton: true,
          title: 'ENTRAR',
        ),
        child: Container(
          child: Center(
            child: Text('okay'),
          ),
        ),
      ),
    );
  }
}
