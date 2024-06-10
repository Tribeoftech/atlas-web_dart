/// Finds the longest palindrome substring within the given string.
import '9-palindrome.dart';

String longestPalindrome(String str) {
  String longestPalindrome = '';
  String currentPalindrome = '';
  for (var i = str.length - 1; i >= 0; i--) {
    for (var j = i; j >= 0; j--) {
      if (isPalindrome(str.substring(j, i + 1))) {
        if (currentPalindrome.length < str.substring(j, i + 1).length) {
          currentPalindrome = str.substring(j, i + 1);
        }
      }
    }

    if (currentPalindrome.length > longestPalindrome.length) {
      longestPalindrome = currentPalindrome;
    }

    currentPalindrome = '';
  }

  if (!isPalindrome(longestPalindrome)) {
    longestPalindrome = 'none';
  }

  return longestPalindrome;
}
