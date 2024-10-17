class Password {
  String password = '';
  
  bool isValid() {
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasDigit = password.contains(RegExp(r'[0-9]'));
    final lengthValid = password.length >= 8 && password.length <= 16;

    return hasUppercase && hasLowercase && hasDigit && lengthValid;
  }

  @override
  String toString() {
    return 'Your Password is $password';
  }
}