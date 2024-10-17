class Password {
  String password = '';

  bool isValid() {
    // Check if the password length is between 8 and 16
    if (password.length < 8 || password.length > 16) return false;

    // Check for uppercase, lowercase, and numeric characters
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasNumber = password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
