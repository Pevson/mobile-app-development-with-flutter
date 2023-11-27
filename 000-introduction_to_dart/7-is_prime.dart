bool isPrime(int number) {
  if (number < 2) return false;

  for (int i = 2; i <= number / 2; i++) {

    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int number = 2023;
  bool prime = isPrime(number);
  print('$number is prime: $prime');
}
