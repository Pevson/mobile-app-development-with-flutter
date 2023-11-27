void main() {
  try {
    List<int> myList = [10, 5, 2, 1];
    int target = 5;
    int index = findIndexOfFirstOccurrence(myList, target);
    if (index == -1) {
      print('Target not found');
    } else {
      print('Target found at index: $index');
    }
  } catch (e) {
    print('Error: ' + e.toString());
  }
}

int findIndexOfFirstOccurrence(List<int> myList, int target) {
  for (int i = 0; i < myList.length; i++) {
    if (myList[i] == target) {
      return i;
    }
  }
  return -1;
}
