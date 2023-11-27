Map<String, int> characterFrequency(String inputString) {
  Map<String, int> frequencyMap = {};

  for (int i = 0; i < inputString.length; i++) {
    String char = inputString[i].toLowerCase();

    if (RegExp(r'[a-z]').hasMatch(char)) {
      frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
    }
  }
  return frequencyMap;
}
void main() {
  String inputString = 'GROUP FOUR MEMBERS ARE PEVSON ANITHA JOHN THOMAS ROSE LUCY';
  Map<String, int> charFrequency = characterFrequency(inputString);
  print('Character frequency: $charFrequency');
}
