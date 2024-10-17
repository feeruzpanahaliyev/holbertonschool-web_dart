class Password {
  String _password; // Private property

  // Constructor to initialize the password
  Password({required String password}) : _password = password;

  // Getter for the password
  String get password => _password;

  // Setter for the password to allow updating the value
  set password(String newPassword) {
    _password = newPassword;
  }

  // Method to validate the password
  bool isValid() {
    // Check password length and ensure it contains uppercase, lowercase, and numbers
    return (_password.length >= 8 && _password.length <= 16) &&
           _password.contains(RegExp(r'[A-Z]')) &&
           _password.contains(RegExp(r'[a-z]')) &&
           _password.contains(RegExp(r'[0-9]'));
  }

  // Override the toString method for a custom message
  @override
  String toString() => "Your Password is: $_password";
}
