int getSmallestInteger(List<int> myList) {
  if (myList.isEmpty) {
    throw ArgumentError('List is empty');
  }
  myList.sort();
  return myList[0];
}

void main() {
  List<int> numbers = [5, 3, 8, 1, 6];
  int smallest = getSmallestInteger(numbers);
  print('The smallest integer is: $smallest');
}
