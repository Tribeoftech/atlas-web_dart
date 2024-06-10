/// Finds the longest substring within the given string that contains unique characters.
String longestUniqueSubstring(String str) {
  String longestSubstring = '';
  String currentSubstring = '';
  for (var i = 0; i < str.length; i++) {
    if (!currentSubstring.contains(str[i])) {
      currentSubstring += str[i];
    } else {
      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }
      currentSubstring = '';
    }
  }
  if (currentSubstring.length > longestSubstring.length) {
    longestSubstring = currentSubstring;
  }
  return longestSubstring;
}
