class User {
  int id;          // New property for User ID
  String name;
  int age;
  double height;

  // Constructor to initialize all properties
  User({
    required this.id,   // Include id in constructor
    required this.name,
    required this.age,
    required this.height,
  });

  // Method to convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,         // Include id in JSON output
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Static method to create User instance from JSON Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],                // Retrieve id from Map
      name: userJson['name'],            // Retrieve name from Map
      age: userJson['age'],              // Retrieve age from Map
      height: userJson['height'],        // Retrieve height from Map
    );
  }

  // Method to return a string representation of the User object
  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}
