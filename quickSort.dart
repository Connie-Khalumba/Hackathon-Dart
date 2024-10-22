bool checkPalindrome(dynamic input) {
  // Convert numeric input to string
  String word = input.toString();

  // Remove spaces and punctuation, and convert to lowercase
  word = word.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Check if the cleaned string is a palindrome
  for (int i = 0; i < word.length ~/ 2; i++) {
    if (word[i] != word[word.length - i - 1]) {
      return false;
    }
  }
  return true;
}

void main() {
  String word = "mum";
  int number = 12321;

  // Check if the string is a palindrome
  bool isWordPalindrome = checkPalindrome(word);
  bool isNumberPalindrome = checkPalindrome(number);

  if (isWordPalindrome) {
    print("\"$word\" is a palindrome...");
  } else {
    print("\"$word\" is not a palindrome...");
  }

  if (isNumberPalindrome) {
    print("$number is a palindrome...");
  } else {
    print("$number is not a palindrome...");
  }
}
