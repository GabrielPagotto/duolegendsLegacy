import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolegends/src/apis/http_api.dart';
import 'package:duolegends/src/components/bottom_bar_component.dart';
import 'package:duolegends/src/components/form_component.dart';
import 'package:duolegends/src/providers/register_state.dart';
import 'package:duolegends/src/validators/register_validator.dart';
import 'package:duolegends/src/components/app_body_component.dart';
import 'package:duolegends/src/components/top_bar_component.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  late RegisterState registerState;

  @override
  Widget build(BuildContext context) {
    registerState = context.watch<RegisterState>();

    return Scaffold(
      body: AppBodyComponent(
        topBar: TopBarComponent(
          title: 'Realizar cadastro',
        ),
        child: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Form(
              child: FormComponent(
                title: 'INFORME OS DADOS DE CADASTRO',
                inputs: [
                  TextFormField(
                    initialValue: registerState.username,
                    onChanged: (value) => registerState.changeUsername(value),
                    validator: (value) => RegisterValidator.validateUsername(value!),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Nome de usuário',
                    ),
                  ),
                  TextFormField(
                    initialValue: registerState.name,
                    onChanged: (value) => registerState.changeName(value),
                    validator: (value) => RegisterValidator.validateName(value!),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: 'Nome',
                    ),
                  ),
                  TextFormField(
                    initialValue: registerState.lastName,
                    onChanged: (value) => registerState.changeLastName(value),
                    validator: (value) => RegisterValidator.validateLastName(value!),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_pin_outlined),
                      hintText: 'Sobrenome',
                    ),
                  ),
                  TextFormField(
                    initialValue: registerState.email,
                    onChanged: (value) => registerState.changeEmail(value),
                    validator: (value) => RegisterValidator.validateEmail(value!),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                    ),
                  ),
                  TextFormField(
                    initialValue: registerState.password,
                    onChanged: (value) => registerState.changePassword(value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Senha',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomBar: BottomBarComponent(
          child: Row(
            children: [
              Spacer(flex: 3),
              Expanded(
                child: Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.all(0),
                      ),
                    ),
                    onPressed: _save,
                    child: Text('Avançar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  dynamic _save() async {
    print(_formKey.currentState);
    if (_formKey.currentState!.validate()) {
      final Map<String, dynamic> body = {
        'username': registerState.username,
        'firstName': registerState.name,
        'lastName': registerState.lastName,
        'email': registerState.email,
        'password': registerState.password,
      };

      final response = await Api.post('/user', body);

      if (response.ok!) {
        return SnackBar(content: Text('Seu cadastro foi realizado com sucesso.'));
      } else {
        print(response.body['status']['message']);
        if (response.body['status']['message'] == 'This username already exists') {
          return ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text('O nome de usuário que você está tentando cadastrar já existe.'),
            ),
          );
        }
        if (response.body['status']['message'] == 'This username already exists') {
          return SnackBar(content: Text('O email que você está tentando cadastrar já existe.'));
        }
      }
    }
  }
}
