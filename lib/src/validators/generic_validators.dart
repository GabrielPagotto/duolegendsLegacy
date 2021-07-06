class GenericValidators {
  static bool isEmailValid(String? email) {
    if (email != null) {
      final RegExp emailVerify = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$");
      return emailVerify.hasMatch(email);
    }
    return false;
  }
}
