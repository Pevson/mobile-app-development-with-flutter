String intToRoman(int number) {
  if (number <= 0 || number > 3999) {

    throw ArgumentError('Number entered is out of range for Roman numerals');
  }

  List<String> romanNumerals = [
    'M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'
  ];
  List<int> values = [
    1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1
  ];

  String result = '';
  for (int i = 0; i < romanNumerals.length; i++) {
    while (number >= values[i]) {
      result += romanNumerals[i];
      number -= values[i];
    }
  }
  return result;
}

void main() {
  int number = 10;
  String roman = intToRoman(number);
  print('$number in Roman numerals: $roman');
}
