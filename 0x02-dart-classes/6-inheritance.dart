// 6-inheritance.dart
import '6-main.dart'
import '6-password.dart';

class User extends Password {
  // Properties
  String name;
  int age;
  double height;
  int id;
  String? user_password;

  // Constructor
  User({
    this.name = '',
    this.age = 0,
    this.height = 0.0,
    this.id = 0,
    this.user_password,
  }) : super(password: user_password ?? '');

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
      user_password: userJson['user_password'],
    );
  }

  bool isPasswordValid() {
    return super.isValid();
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
