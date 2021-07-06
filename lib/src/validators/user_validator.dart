import 'package:duolegends/src/validators/generic_validators.dart';

class UserValidator {
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? confirmPassword;

  UserValidator({this.username, this.firstName, this.lastName, this.email, this.password, this.confirmPassword});

  String? errorMessage;

  bool isValid() => this.errorMessage == null;

  bool isNotValid() => this.errorMessage != null;

  void validadeRegister() {
    if (this.username == null || this.username!.isEmpty) {
      this.errorMessage = 'Nome de usuário não deve estar vazio';
      return;
    }

    if (this.username!.split(' ').length > 1) {
      this.errorMessage = 'Nome de usuário não pode conter espaços';
      return;
    }

    if (this.username!.length < 3 || this.username!.length > 16) {
      this.errorMessage = 'Nome de usuário deve estar entre 3 e 16 caracteres';
      return;
    }

    if (this.firstName == null || this.firstName!.isEmpty) {
      this.errorMessage = 'Nome não pode estar vazio';
      return;
    }

    if (this.firstName!.length < 3 || this.firstName!.length > 16) {
      this.errorMessage = 'Nome deve estar entre 3 e 16 caracteres';
      return;
    }

    if (this.email == null || this.email!.isEmpty) {
      this.errorMessage = 'Email não deve estar vazio';
      return;
    }

    if (!GenericValidators.isEmailValid(this.email)) {
      this.errorMessage = 'Informe um email válido';
      return;
    }

    if (this.email!.length < 3 || this.email!.length > 32) {
      this.errorMessage = 'Email deve estar entre 3 e 32 caracteres';
      return;
    }

    if (this.lastName == null || this.lastName!.isEmpty) {
      this.errorMessage = 'Sobrenome não pode estar vazio';
      return;
    }

    if (this.lastName!.length < 3 || this.lastName!.length > 32) {
      this.errorMessage = 'Sobrenome deve estar entre 3 e 32 caracteres';
      return;
    }

    if (this.password != this.confirmPassword) {
      this.errorMessage = 'As senhas informadas são diferentes';
      return;
    }
  }

  Map<String, dynamic> getRegisterBody() {
    return {
      'username': this.username,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'email': this.email,
      'password': this.password,
    };
  }
}
