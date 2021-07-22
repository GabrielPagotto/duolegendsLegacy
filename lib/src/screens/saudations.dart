import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saudations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
        child: Column(
          children: [
            Spacer(),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Bem-vindo(a) ao Duolegends',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Junte-se a milhares de jogares de League of Legends que estão em busca de uma parceiro para jogar e encontrar novas amizades.',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('Registre-se'),
                      onPressed: () => Navigator.pushNamed(context, '/register'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColorDark),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
