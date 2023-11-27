void printRightAngleTriangle(int height) {
  for (int i = 1; i <= height; i++) {
    print('*' * i);
  }
}
void main() {
  printRightAngleTriangle(5);
}

