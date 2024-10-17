class Password {
  // Making the password property private
  String _password;

  // Constructor that initializes the private password property
  Password({required String password}) : _password = password;

  // Method to validate the password according to given conditions
  bool isValid() {
    // Check if password length is between 8 and 16 characters
    if (_password.length < 8 || _password.length > 16) return false;

    // Check for at least one uppercase letter, one lowercase letter, and one number
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumber = _password.contains(RegExp(r'[0-9]'));

    // Return true if all conditions are met
    return hasUppercase && hasLowercase && hasNumber;
  }

  // Override the toString method to provide a custom output for the password
  @override
  String toString() {
    return "Your Password is $_password";
  }
}
