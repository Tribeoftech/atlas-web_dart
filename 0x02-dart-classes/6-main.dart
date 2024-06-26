// 6-password.dart

class Password {
  String password;

  Password({required this.password});

  bool isValid() {
    // Implement your password validation logic here
    return password.length >= 8; // Example validation criteria
  }
}
