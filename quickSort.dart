void main() {
  List<int> list = [7, 2, 1, 8, 6, 3, 5, 4];
  List<int> result = quickSort(list, 0, list.length - 1);
  print(result);
}

List<int> quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(list, low, high);
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
  return list;
}

int partition(List<int> list, int low, int high) {
  int pivot = list[high];  // Pivot is the last element
  int i = low - 1;  // Pointer for the smaller element

  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, high);  // Place the pivot in the correct position
  return i + 1;  // Return the pivot index
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
