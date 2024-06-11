import '3-main.dart';
import 'dart:convert';
// greetUser returns the string 'hello ' + username from loginUser()

Future<String> greetUser() async {
  try {
    final Map<String, dynamic> user = await json.decode(await fetchUserData());
    return 'Hello ${user['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}


// loginUser() calls checkCredentials()
Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}