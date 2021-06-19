class RegisterValidator {
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo não deve ficar vazio';
    }

    if (value.split(' ').length > 1) {
      return 'Este campo não pode ter espaços';
    }

    if (value.length < 3 || value.length > 16) {
      return 'Este campo deve ter entre 3 e 16 caracteres';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo não deve ficar vazio';
    }

    if (value.length < 3 || value.length > 16) {
      return 'Este campo deve ter entre 3 e 16 caracteres';
    }

    return null;
  }

  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo não deve ficar vazio';
    }

    if (value.length < 3 || value.length > 32) {
      return 'Este campo deve ter entre 3 e 32 caracteres';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo não deve ficar vazio';
    }

    if (value.split(' ').length > 1) {
      return 'Este campo não pode ter espaços';
    }

    if (value.split('@').length != 2) {
      return "O email deve conter um '@'";
    }

    if (value.length < 3 || value.length > 32) {
      return 'Este campo deve ter entre 3 e 32 caracteres';
    }

    return null;
  }
}
