int sumOfEvenNumbers(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    if (num % 2 == 0) {
      sum += num;
    }
  }
  return sum;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int sum = sumOfEvenNumbers(numbers);
  print('Sum of even numbers: $sum');
}
