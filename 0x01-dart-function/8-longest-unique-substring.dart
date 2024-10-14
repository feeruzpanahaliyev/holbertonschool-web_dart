String longestUniqueSubstring(String str) {
    int n = str.length;
    String longestSubstr = '';
    Map <String, int> charIndexMap = {};
    int start = 0;

    for (int end = 0; end < n; end++) {
        String currentChar = str[end];

        if (charIndexMap.containsKey(currentChar)) {
            start = charIndexMap[currentChar]! + 1;
            charIndexMap.removeWhere((key, value) => value < start);
        }

        charIndexMap[currentChar] = end;

        String currentSubstr = str.substring(start, end + 1);
        if (currentSubstr.length > longestSubstr.length) {
            longestSubstr = currentSubstr;
        }
    }
    return longestSubstr;
}