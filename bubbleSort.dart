bubbleSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {
        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
  }
  print(list);
}

void main() {
  List<int> list = [2, 5, 3, 15, 20, 5, 2, 7, 9];
  bubbleSort(list);
}