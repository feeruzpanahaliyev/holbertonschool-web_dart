class Password {
  // Private password property
  String _password;

  // Constructor that initializes the private password property
  Password({required String password}) : _password = password;

  // Method to validate the password according to given conditions
  bool isValid() {
    // Check if password length is between 8 and 16 characters
    if (_password.length < 8 || _password.length > 16) return false;

    // Initialize flags for character type checks
    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumber = false;

    // Loop through each character in the password to check for types
    for (var char in _password.split('')) {
      if (char.contains(RegExp(r'[A-Z]'))) {
        hasUppercase = true;
      } else if (char.contains(RegExp(r'[a-z]'))) {
        hasLowercase = true;
      } else if (char.contains(RegExp(r'[0-9]'))) {
        hasNumber = true;
      }
    }

    // Return true only if all conditions are met
    return hasUppercase && hasLowercase && hasNumber;
  }

  // Override the toString method to provide a custom output for the password
  @override
  String toString() {
    return "Your Password is $_password";
  }
}
