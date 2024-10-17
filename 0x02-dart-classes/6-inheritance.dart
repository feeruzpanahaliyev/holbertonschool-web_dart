import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;

  // New property to hold the user password
  String user_password;

  // Constructor to initialize the User
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  }) : super(password: user_password) {
    // Update the password in the superclass
    password = user_password;
  }

  // Override the setter for user_password to also update the superclass
  set user_password(String newPassword) {
    password = newPassword; // Update the password in the Password superclass
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
      name: userJson['name'] ?? '', // Default value if null
      age: userJson['age'] ?? 0, // Default value if null
      height: userJson['height']?.toDouble() ?? 0.0, // Default value if null
      user_password: userJson['user_password'] ?? '', // Default value if null
    );
  }

  // Override toString method to include password validity
  @override
  String toString() {
    return "User(id: $id, name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
