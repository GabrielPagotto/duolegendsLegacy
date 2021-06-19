import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saudations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Spacer(),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Encontre milhares de pessoas para jogar League of Legends.',
                      textScaleFactor: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('Cadastrar-se'),
                      onPressed: () => Navigator.pushNamed(context, '/register'),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              child: Row(
                children: [
                  Text('Já possui uma conta?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Entrar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
