class Password {
  String _password;

  Password({required String password}) : _password = password;

  String get password => _password;

  set password(String newPassword){
    _password = newPassword;
  } 
  bool isValid() {
    final hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = _password.contains(RegExp(r'[a-z]'));
    final hasDigit = _password.contains(RegExp(r'[0-9]'));
    final lengthValid = _password.length >= 8 && _password.length <= 16;

    return hasUppercase && hasLowercase && hasDigit && lengthValid;
  }

  @override
  String toString() {
    return 'Your Password is $_password';
  }
}