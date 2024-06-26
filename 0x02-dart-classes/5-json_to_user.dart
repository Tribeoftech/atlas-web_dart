// 5-json_to_user.dart

class User {
  // Properties
  int id;
  String name;
  int age;
  double height;

  // Constructor
  User({required this.id, required this.name, required this.age, required this.height});

  // Methods
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}
