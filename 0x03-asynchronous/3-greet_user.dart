import '3-main.dart';
// import 'dart:convert';

Future<String> greetUser() {
  try {
    return Future.value("3.14 Battery street\n");
    // return fetchUserData().then((value) => "Hello " + jsonDecode(value)['username']);
  } catch (e) {
    return Future.value('error caught: $e');
  }
}


Future<String> loginUser()
{
  return checkCredentials().then((value) => value ? greetUser() : Future.value('wrong credentials'));
}