import '1-main.dart';
import 'dart:convert';

// getUserId() returns a Future string representing the user id
Future<String> getUserId() async {
  try {
    final String userData = await fetchUserData();
    final Map<String, dynamic> user = jsonDecode(userData);
    return user['id'];
  } catch (e) {
    return 'error caught: $e';
  }
}