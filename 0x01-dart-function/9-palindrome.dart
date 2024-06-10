/// Checks if the given string is a palindrome.
bool isPalindrome(String str) {
  int strLength = str.length;
  String reversedStr = '';
  if (strLength < 3) {
    return false;
  }
  for (var i = strLength - 1; i >= 0; i--) {
    reversedStr += str[i];
  }
  if (reversedStr == str) {
    return true;
  } else {
    return false;
  }
}
