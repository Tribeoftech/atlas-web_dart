import '2-main.dart';

// fetchUser function returns the user's ID as a string
// utilizes try-catch block to handle errors
Future<String> fetchUser() async {
  try {
    final Map<String, dynamic> user = await json.decode(await fetchUserData());
    return user['id'];
  } catch (e) {
    return 'error caught: $e';
  }
}

// getUser function prints user's string representation
// utilizes try-catch block to handle errors
Future<void> getUser() async {
  try {
    print(await fetchUser());
  } catch (e) {
    print('error caught: $e');
  }
}