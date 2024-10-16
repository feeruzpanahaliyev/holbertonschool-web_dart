
bool isPalindrome(String s) {
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none'; 
  }

  String longest = '';


  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      String substring = s.substring(i, j + 1);
      if (substring.length >= 3 && isPalindrome(substring)) {
        if (substring.length > longest.length) {
          longest = substring; 
        }
      }
    }
  }

  return longest.isNotEmpty ? longest : 'none';
}
