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

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;
  String? user_password;

  User({required this.name, required this.age, required this.height, required this.id, String? user_password})
    : user_password = user_password,
    super(password: user_password ?? '');
  
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
      'id': id,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id : ${id ?? "unknown"}, name: ${name ?? "unknown"}, age: ${age ?? "unknown"}, height: ${height ?? "unknown"}, Password: ${isValid()})';
  }
}