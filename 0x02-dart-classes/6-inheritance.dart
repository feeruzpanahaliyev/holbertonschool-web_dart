import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : super(password: user_password); // Pass password to Password superclass

  // Getter for user_password
  String get user_password => password; // Access password via getter

  // Setter for user_password
  set user_password(String newPassword) {
    password = newPassword; // Update password
  }

  // Convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  // Static method to create a User instance from JSON
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0, // Default value if null
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  // Override toString method
  @override
  String toString() {
    return "User(id: $id, name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
