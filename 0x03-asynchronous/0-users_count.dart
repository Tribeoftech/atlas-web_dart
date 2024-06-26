// 0-users_count.dart
import '0-util.dart';

Future<void> usersCount() async {
  final int usersCount = await fetchUsersCount();
  print('$usersCount');
}
