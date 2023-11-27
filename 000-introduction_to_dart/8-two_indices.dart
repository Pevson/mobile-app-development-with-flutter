List<int> findTwoNumbersWithSum(List<int> numbers, int target) {
  Map<int, int> numMap = {};
  for (int i = 0; i < numbers.length; i++) {

    int complement = target - numbers[i];
    if (numMap.containsKey(complement)) {

      return [numMap[complement]!, i];
    }
    numMap[numbers[i]] = i;
  }
  throw ArgumentError('No solution found');
}

void main() {
  List<int> numbers = [2, 7, 11, 15];
  int target = 9;
  List<int> indices = findTwoNumbersWithSum(numbers, target);
  print('Indices with sum $target: $indices');
}
