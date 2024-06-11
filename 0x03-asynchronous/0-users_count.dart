import '0-utils.dart';
// Prints number of users by asynchronously fetching from fetchUsersCount()


Future<void> usersCount() async {
  final int usersCount = await fetchUsersCount();
  print('$usersCount');
}