List<int> factorizeToPrimeNumbers(int number) {
  List<int> factors = [];
  for (int i = 2; i <= number; i++) {
    while (number % i == 0) {
      factors.add(i);
      number = number ~/ i;
    }
  }
  return factors;
}
void main() {
  int number = 24;
  List<int> primeFactors = factorizeToPrimeNumbers(number);
  print('Prime factors of $number: $primeFactors');
}
