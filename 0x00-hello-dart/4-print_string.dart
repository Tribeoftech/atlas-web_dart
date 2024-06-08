/// Demonstrates printing a string and a substring of a string.
void main() {
  String str = "Holberton School";
  print('$str$str$str');
  print(str.substring(0, 9) + '\n');
}